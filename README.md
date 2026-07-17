# PAB Exam Trainer

Small local trainer for Salesforce Platform App Builder practice questions.

## What is included

- `pab_exam_trainer.py`: GUI quiz app.
- `pab-s1-quiz.xlsx`: question bank used by the app.
- `avvia_pab_exam_trainer.bat`: Windows launcher.
- `android_app/`: Android Studio project for the mobile trainer.
- `export_android_questions.py`: exports the Excel question bank to Android JSON.
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

## Android App

The Android app uses the same questions and the same training logic:

- 65-question sessions.
- Balanced question extraction based on local counters.
- Randomized answer order.
- Immediate feedback after each question.
- Selection limited to the number of correct answers.
- Local resettable counters on the phone.
- Editing the current question, answer texts, number of correct answers, and which answers are correct.

Question edits require a Supabase login and are written directly to the shared `questions` table. Apply the
Supabase migrations before using the editor so authenticated users have permission to update question content.

To refresh the app question bank after changing `pab-s1-quiz.xlsx`, run:

```powershell
python export_android_questions.py
```

To build/install it:

1. Install Android Studio.
2. Open the `android_app` folder in Android Studio.
3. Let Android Studio install/sync the required Android SDK and Gradle plugin.
4. Connect an Android phone with USB debugging enabled, or start an emulator.
5. Press Run in Android Studio.

To create an APK in Android Studio, use `Build > Build Bundle(s) / APK(s) > Build APK(s)`.
