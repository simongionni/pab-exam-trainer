# PAB Exam Trainer

Small local trainer for Salesforce Platform App Builder practice questions.

## What is included

- `pab_exam_trainer.py`: GUI quiz app.
- `pab-s1-quiz.xlsx`: question bank used by the app.
- `avvia_pab_exam_trainer.bat`: Windows launcher.
- `build_pab_quiz.py`: script used to rebuild the workbook from PDF/OCR sources.
- OCR text files used during the extraction process.

## How to run

Install Python 3 and dependencies:

```powershell
pip install -r requirements.txt
```

Then start the trainer:

```powershell
python pab_exam_trainer.py
```

On Windows you can also double-click:

```text
avvia_pab_exam_trainer.bat
```

## Trainer behavior

- Runs exam-like sessions of 65 random questions.
- Randomizes answer option order for each question.
- Shows correctness feedback immediately after each answer.
- Limits selection count to the number of correct answers.
- Stores local counters in `pab_exam_stats.json`.
- Includes a GUI button to reset counters.

`pab_exam_stats.json` is intentionally ignored by Git so every device keeps its own progress.
