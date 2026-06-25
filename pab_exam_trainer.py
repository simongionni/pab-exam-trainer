import json
import random
import re
import tkinter as tk
from dataclasses import dataclass
from pathlib import Path
from tkinter import messagebox, ttk

from openpyxl import load_workbook


ROOT = Path(__file__).resolve().parent
WORKBOOK_PATH = ROOT / "pab-s1-quiz.xlsx"
STATS_PATH = ROOT / "pab_exam_stats.json"
SESSION_SIZE = 65


@dataclass
class Question:
    qid: str
    source: str
    original_num: str
    prompt: str
    options: list[tuple[str, str]]
    correct_letters: set[str]


def normalize_answer(value: str) -> str:
    return "".join(sorted(set(re.sub(r"[^A-F]", "", str(value or "").upper()))))


def split_question_text(text: str) -> tuple[str, list[tuple[str, str]]]:
    lines = [line.rstrip() for line in str(text or "").splitlines()]
    prompt_lines: list[str] = []
    options: list[tuple[str, list[str]]] = []
    current = None

    option_re = re.compile(r"^\s*([A-F])[\.\)]\s*(.*)$")
    for line in lines:
        match = option_re.match(line)
        if match:
            current = [match.group(1), [match.group(2).strip()]]
            options.append(current)
            continue
        if current is not None:
            current[1].append(line.strip())
        else:
            prompt_lines.append(line.strip())

    prompt = "\n".join(line for line in prompt_lines if line).strip()
    clean_options = []
    for letter, parts in options:
        value = " ".join(part for part in parts if part).strip()
        clean_options.append((letter, value))
    return prompt, clean_options


def load_questions() -> list[Question]:
    workbook = load_workbook(WORKBOOK_PATH, data_only=False)
    sheet = workbook["Quiz"]
    questions: list[Question] = []

    for row in range(2, sheet.max_row + 1):
        qid = str(sheet.cell(row, 1).value)
        source = str(sheet.cell(row, 2).value)
        original = str(sheet.cell(row, 3).value)
        text = sheet.cell(row, 4).value
        correct = normalize_answer(sheet.cell(row, 5).value)
        prompt, options = split_question_text(text)
        if not prompt or not options or not correct:
            continue
        questions.append(
            Question(
                qid=qid,
                source=source,
                original_num=original,
                prompt=prompt,
                options=options,
                correct_letters=set(correct),
            )
        )
    return questions


def load_stats() -> dict:
    if not STATS_PATH.exists():
        return {"questions": {}}
    try:
        return json.loads(STATS_PATH.read_text(encoding="utf-8"))
    except json.JSONDecodeError:
        return {"questions": {}}


def save_stats(stats: dict) -> None:
    STATS_PATH.write_text(json.dumps(stats, indent=2, ensure_ascii=False), encoding="utf-8")


def question_stats(stats: dict, qid: str) -> dict:
    return stats.setdefault("questions", {}).setdefault(
        qid, {"seen": 0, "correct": 0, "wrong": 0}
    )


def eligible_questions(candidates: list[Question], stats: dict) -> list[Question]:
    counts = [question_stats(stats, q.qid)["seen"] for q in candidates]
    min_count = min(counts)
    if min_count == 0:
        return [q for q in candidates if question_stats(stats, q.qid)["seen"] == 0]
    return [q for q in candidates if question_stats(stats, q.qid)["seen"] < 3 * min_count]


def build_session(questions: list[Question], stats: dict) -> list[Question]:
    remaining = questions[:]
    picked: list[Question] = []

    while remaining and len(picked) < min(SESSION_SIZE, len(questions)):
        eligible = eligible_questions(remaining, stats)
        pool = eligible if eligible else remaining
        choice = random.choice(pool)
        picked.append(choice)
        remaining.remove(choice)

    return picked


class ExamTrainer(tk.Tk):
    def __init__(self) -> None:
        super().__init__()
        self.title("PAB Exam Trainer")
        self.geometry("1000x760")
        self.minsize(820, 620)

        self.questions = load_questions()
        if len(self.questions) < SESSION_SIZE:
            messagebox.showwarning(
                "Domande insufficienti",
                f"Ho trovato solo {len(self.questions)} domande valide.",
            )
        self.stats = load_stats()
        self.session: list[Question] = []
        self.index = 0
        self.current_options: list[tuple[str, str, str]] = []
        self.answer_vars: dict[str, tk.BooleanVar] = {}
        self.option_widgets: dict[str, ttk.Checkbutton] = {}
        self.feedback_shown = False
        self.correct_in_session = 0

        self._build_ui()
        self.new_session()

    def _build_ui(self) -> None:
        top = ttk.Frame(self, padding=12)
        top.pack(fill="x")

        self.progress_label = ttk.Label(top, text="")
        self.progress_label.pack(side="left")

        ttk.Button(top, text="Nuovo esame", command=self.confirm_new_session).pack(side="right")
        ttk.Button(top, text="Statistiche", command=self.show_stats).pack(side="right", padx=(0, 8))
        ttk.Button(top, text="Reset counter", command=self.reset_counters).pack(side="right", padx=(0, 8))

        body = ttk.Frame(self, padding=(12, 0, 12, 12))
        body.pack(fill="both", expand=True)

        self.prompt = tk.Text(body, wrap="word", height=11, font=("Segoe UI", 11))
        self.prompt.configure(state="disabled")
        self.prompt.pack(fill="x", pady=(0, 10))

        self.options_frame = ttk.Frame(body)
        self.options_frame.pack(fill="both", expand=True)

        self.feedback = tk.Text(body, wrap="word", height=8, font=("Segoe UI", 10))
        self.feedback.configure(state="disabled")
        self.feedback.pack(fill="x", pady=(10, 10))

        bottom = ttk.Frame(body)
        bottom.pack(fill="x")

        self.submit_button = ttk.Button(bottom, text="Conferma risposta", command=self.submit_answer)
        self.submit_button.pack(side="left")
        self.next_button = ttk.Button(bottom, text="Prossima domanda", command=self.next_question)
        self.next_button.pack(side="left", padx=(8, 0))

    def confirm_new_session(self) -> None:
        if messagebox.askyesno("Nuovo esame", "Vuoi iniziare una nuova sessione da 65 domande?"):
            self.new_session()

    def new_session(self) -> None:
        self.session = build_session(self.questions, self.stats)
        self.index = 0
        self.correct_in_session = 0
        self.show_question()

    def show_question(self) -> None:
        self.feedback_shown = False
        self.answer_vars.clear()
        self.option_widgets.clear()
        for child in self.options_frame.winfo_children():
            child.destroy()

        if self.index >= len(self.session):
            self.show_session_done()
            return

        question = self.session[self.index]
        for option in question.options:
            question_stats(self.stats, question.qid)["seen"] += 1
            break
        save_stats(self.stats)

        self.current_options = self.shuffle_options(question)

        self.progress_label.configure(
            text=(
                f"Domanda {self.index + 1}/{len(self.session)}  "
                f"Score: {self.correct_in_session}/{self.index}  "
                f"Fonte: {question.source} #{question.original_num}"
            )
        )
        self.set_text(self.prompt, question.prompt)
        self.set_text(self.feedback, "")

        for display_letter, original_letter, text in self.current_options:
            var = tk.BooleanVar(value=False)
            self.answer_vars[display_letter] = var
            checkbox = ttk.Checkbutton(
                self.options_frame,
                text=f"{display_letter}. {text}",
                variable=var,
                command=self.enforce_answer_limit,
            )
            checkbox.pack(anchor="w", fill="x", pady=5)
            self.option_widgets[display_letter] = checkbox

        self.next_button.configure(state="disabled")
        self.enforce_answer_limit()

    def shuffle_options(self, question: Question) -> list[tuple[str, str, str]]:
        options = question.options[:]
        random.shuffle(options)
        display_letters = "ABCDEF"
        return [
            (display_letters[index], original_letter, text)
            for index, (original_letter, text) in enumerate(options)
        ]

    def selected_original_letters(self) -> set[str]:
        display_to_original = {display: original for display, original, _ in self.current_options}
        return {
            display_to_original[display]
            for display, var in self.answer_vars.items()
            if var.get()
        }

    def enforce_answer_limit(self) -> None:
        if self.index >= len(self.session):
            return
        limit = len(self.session[self.index].correct_letters)
        selected_count = sum(1 for var in self.answer_vars.values() if var.get())
        for display, widget in self.option_widgets.items():
            if self.answer_vars[display].get() or selected_count < limit:
                widget.configure(state="normal")
            else:
                widget.configure(state="disabled")
        self.submit_button.configure(state="normal" if selected_count == limit else "disabled")

    def submit_answer(self) -> None:
        if self.feedback_shown:
            return
        question = self.session[self.index]
        selected = self.selected_original_letters()
        correct = selected == question.correct_letters

        stats = question_stats(self.stats, question.qid)
        if correct:
            stats["correct"] += 1
            self.correct_in_session += 1
        else:
            stats["wrong"] += 1
        save_stats(self.stats)

        selected_text = self.describe_letters(selected)
        correct_text = self.describe_letters(question.correct_letters)
        verdict = "CORRETTA" if correct else "SBAGLIATA"
        feedback = [
            verdict,
            "",
            f"La tua risposta: {selected_text or '(nessuna)'}",
            f"Risposta corretta: {correct_text}",
        ]
        self.set_text(self.feedback, "\n".join(feedback))
        self.feedback_shown = True
        self.submit_button.configure(state="disabled")
        self.next_button.configure(state="normal")

    def describe_letters(self, letters: set[str]) -> str:
        parts = []
        for display, original, text in self.current_options:
            if original in letters:
                parts.append(f"{display}. {text}")
        return "; ".join(parts)

    def next_question(self) -> None:
        self.index += 1
        self.show_question()

    def show_session_done(self) -> None:
        self.progress_label.configure(
            text=f"Sessione completata: {self.correct_in_session}/{len(self.session)} corrette"
        )
        self.set_text(self.prompt, "Sessione completata.")
        self.set_text(
            self.feedback,
            "Avvia un nuovo esame quando vuoi. Le statistiche di estrazione sono già state aggiornate.",
        )
        for child in self.options_frame.winfo_children():
            child.destroy()
        self.submit_button.configure(state="disabled")
        self.next_button.configure(state="disabled")

    def show_stats(self) -> None:
        total_seen = sum(q.get("seen", 0) for q in self.stats.get("questions", {}).values())
        total_correct = sum(q.get("correct", 0) for q in self.stats.get("questions", {}).values())
        total_wrong = sum(q.get("wrong", 0) for q in self.stats.get("questions", {}).values())
        messagebox.showinfo(
            "Statistiche",
            (
                f"Domande nel database: {len(self.questions)}\n"
                f"Estrazioni totali: {total_seen}\n"
                f"Risposte corrette: {total_correct}\n"
                f"Risposte sbagliate: {total_wrong}\n"
                f"File statistiche: {STATS_PATH.name}"
            ),
        )

    def reset_counters(self) -> None:
        if not messagebox.askyesno(
            "Reset counter",
            "Vuoi azzerare contatori di estrazione, corrette e sbagliate?",
        ):
            return
        self.stats = {"questions": {}}
        save_stats(self.stats)
        messagebox.showinfo("Reset counter", "Statistiche azzerate.")
        self.new_session()

    @staticmethod
    def set_text(widget: tk.Text, value: str) -> None:
        widget.configure(state="normal")
        widget.delete("1.0", "end")
        widget.insert("1.0", value)
        widget.configure(state="disabled")


def main() -> None:
    if not WORKBOOK_PATH.exists():
        raise SystemExit(f"File non trovato: {WORKBOOK_PATH}")
    app = ExamTrainer()
    app.mainloop()


if __name__ == "__main__":
    main()
