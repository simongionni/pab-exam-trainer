package com.example.pabtrainer;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class MainActivity extends Activity {
    private static final int SESSION_SIZE = 65;
    private static final String PREFS_NAME = "pab_exam_stats";
    private static final String SUPABASE_URL = "https://haorkjzxxhzpcvmvaklk.supabase.co";
    private static final String SUPABASE_ANON_KEY = "sb_publishable_ljBw3GVH83nOhfVB-uXF2g_vek6Ev4C";

    private static final int BG = Color.rgb(247, 247, 242);
    private static final int INK = Color.rgb(25, 32, 31);
    private static final int MUTED = Color.rgb(91, 103, 101);
    private static final int GREEN = Color.rgb(20, 108, 93);
    private static final int RED = Color.rgb(158, 42, 43);
    private static final int CARD = Color.rgb(255, 255, 251);
    private static final int LINE = Color.rgb(218, 221, 213);

    private final Random random = new Random();
    private final List<Question> questions = new ArrayList<>();
    private final List<Question> session = new ArrayList<>();
    private final List<DisplayOption> currentOptions = new ArrayList<>();
    private final Map<String, CheckBox> checkBoxes = new HashMap<>();

    private SharedPreferences prefs;
    private LinearLayout optionsLayout;
    private TextView progressView;
    private TextView syncView;
    private TextView promptView;
    private TextView feedbackView;
    private Button submitButton;
    private Button nextButton;

    private String accessToken = "";
    private String refreshToken = "";
    private String userId = "";
    private String userEmail = "";
    private int index = 0;
    private int correctInSession = 0;
    private boolean feedbackShown = false;
    private boolean fullSyncInProgress = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.setStatusBarColor(BG);
        window.setNavigationBarColor(BG);

        prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        restoreSession();
        buildUi();
        loadQuestionsFromAsset();
        newSession();
        if (isOnline()) {
            refreshAndSync(false);
        }
    }

    private void buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(BG);
        root.setPadding(dp(16), getStatusBarHeight() + dp(12), dp(16), dp(12));

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setPadding(0, 0, 0, dp(10));
        root.addView(header);

        TextView titleView = new TextView(this);
        titleView.setText("PAB Trainer");
        titleView.setTextColor(INK);
        titleView.setTextSize(24);
        titleView.setTypeface(Typeface.DEFAULT_BOLD);
        header.addView(titleView);

        syncView = new TextView(this);
        syncView.setTextColor(MUTED);
        syncView.setTextSize(13);
        syncView.setPadding(0, dp(2), 0, dp(8));
        header.addView(syncView);
        updateSyncStatus();

        progressView = new TextView(this);
        progressView.setTextColor(INK);
        progressView.setTextSize(15);
        progressView.setTypeface(Typeface.DEFAULT_BOLD);
        progressView.setPadding(0, 0, 0, dp(10));
        header.addView(progressView);

        LinearLayout actionRow = new LinearLayout(this);
        actionRow.setOrientation(LinearLayout.HORIZONTAL);
        actionRow.setGravity(Gravity.CENTER_VERTICAL);
        header.addView(actionRow);

        addHeaderButton(actionRow, "Login", v -> showLoginDialog());
        addHeaderButton(actionRow, "Sync", v -> syncNow(true));
        addHeaderButton(actionRow, "Stats", v -> showStats());
        addHeaderButton(actionRow, "Reset", v -> confirmReset());
        addHeaderButton(actionRow, "Modifica", v -> showQuestionEditor());
        addHeaderButton(actionRow, "Nuovo", v -> confirmNewSession());

        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(false);
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        scrollView.addView(content);

        promptView = new TextView(this);
        promptView.setTextColor(INK);
        promptView.setTextSize(18);
        promptView.setTypeface(Typeface.DEFAULT_BOLD);
        promptView.setLineSpacing(0, 1.08f);
        promptView.setPadding(dp(14), dp(14), dp(14), dp(14));
        promptView.setBackground(cardBackground());
        content.addView(promptView);

        optionsLayout = new LinearLayout(this);
        optionsLayout.setOrientation(LinearLayout.VERTICAL);
        optionsLayout.setPadding(0, dp(12), 0, 0);
        content.addView(optionsLayout);

        feedbackView = new TextView(this);
        feedbackView.setTextColor(INK);
        feedbackView.setTextSize(16);
        feedbackView.setPadding(dp(14), dp(14), dp(14), dp(14));
        LinearLayout.LayoutParams feedbackParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
        );
        feedbackParams.setMargins(0, dp(10), 0, dp(12));
        content.addView(feedbackView, feedbackParams);

        root.addView(scrollView, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                0,
                1
        ));

        LinearLayout bottomBar = new LinearLayout(this);
        bottomBar.setOrientation(LinearLayout.HORIZONTAL);

        submitButton = mainButton("Conferma");
        submitButton.setOnClickListener(v -> submitAnswer());
        bottomBar.addView(submitButton, new LinearLayout.LayoutParams(0, dp(54), 1));

        nextButton = mainButton("Prossima");
        nextButton.setOnClickListener(v -> nextQuestion());
        LinearLayout.LayoutParams nextParams = new LinearLayout.LayoutParams(0, dp(54), 1);
        nextParams.setMargins(dp(10), 0, 0, 0);
        bottomBar.addView(nextButton, nextParams);

        root.addView(bottomBar);
        setContentView(root);
    }

    private void addHeaderButton(LinearLayout row, String text, android.view.View.OnClickListener listener) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(11);
        button.setAllCaps(false);
        button.setOnClickListener(listener);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, dp(42), 1);
        params.setMargins(0, 0, dp(6), 0);
        row.addView(button, params);
    }

    private Button mainButton(String text) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(16);
        button.setAllCaps(false);
        return button;
    }

    private GradientDrawable cardBackground() {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(CARD);
        drawable.setStroke(dp(1), LINE);
        drawable.setCornerRadius(dp(8));
        return drawable;
    }

    private void loadQuestionsFromAsset() {
        try {
            InputStream stream = getAssets().open("questions.json");
            JSONArray array = new JSONArray(readAll(stream));
            questions.clear();
            for (int i = 0; i < array.length(); i++) {
                Question question = parseQuestion(array.getJSONObject(i), true);
                if (question != null) {
                    questions.add(question);
                }
            }
        } catch (Exception error) {
            showMessage("Errore", "Non riesco a caricare questions.json:\n" + error.getMessage());
        }
    }

    private Question parseQuestion(JSONObject item, boolean camelCase) {
        try {
            Question question = new Question();
            question.id = item.getString("id");
            question.source = item.optString("source", "");
            question.originalNumber = item.optString(camelCase ? "originalNumber" : "original_number", "");
            question.prompt = item.getString("prompt");

            JSONArray options = item.getJSONArray("options");
            for (int j = 0; j < options.length(); j++) {
                JSONObject optionJson = options.getJSONObject(j);
                Option option = new Option();
                option.letter = optionJson.getString("letter");
                option.text = optionJson.getString("text");
                question.options.add(option);
            }

            JSONArray correct = item.getJSONArray(camelCase ? "correctLetters" : "correct_letters");
            for (int j = 0; j < correct.length(); j++) {
                question.correctLetters.add(correct.getString(j));
            }

            if (question.prompt.isEmpty() || question.options.isEmpty() || question.correctLetters.isEmpty()) {
                return null;
            }
            return question;
        } catch (Exception ignored) {
            return null;
        }
    }

    private void newSession() {
        session.clear();
        session.addAll(buildSession());
        index = 0;
        correctInSession = 0;
        showQuestion();
    }

    private List<Question> buildSession() {
        List<Question> remaining = new ArrayList<>(questions);
        List<Question> picked = new ArrayList<>();
        int target = Math.min(SESSION_SIZE, questions.size());

        while (!remaining.isEmpty() && picked.size() < target) {
            List<Question> eligible = eligibleQuestions(remaining);
            List<Question> pool = eligible.isEmpty() ? remaining : eligible;
            Question choice = pool.get(random.nextInt(pool.size()));
            picked.add(choice);
            remaining.remove(choice);
        }

        return picked;
    }

    private List<Question> eligibleQuestions(List<Question> candidates) {
        int minCount = Integer.MAX_VALUE;
        for (Question question : candidates) {
            minCount = Math.min(minCount, seen(question.id));
        }

        List<Question> eligible = new ArrayList<>();
        for (Question question : candidates) {
            int seen = seen(question.id);
            if (minCount == 0) {
                if (seen == 0) {
                    eligible.add(question);
                }
            } else if (seen < 3 * minCount) {
                eligible.add(question);
            }
        }
        return eligible;
    }

    private void showQuestion() {
        showQuestion(true);
    }

    private void showQuestion(boolean countSeen) {
        feedbackShown = false;
        checkBoxes.clear();
        currentOptions.clear();
        optionsLayout.removeAllViews();
        feedbackView.setText("");
        feedbackView.setBackgroundColor(Color.TRANSPARENT);

        if (index >= session.size()) {
            progressView.setText("Sessione completata: " + correctInSession + "/" + session.size());
            promptView.setText("Sessione completata.");
            feedbackView.setText("Avvia un nuovo esame quando vuoi. Le statistiche sono già state aggiornate.");
            submitButton.setEnabled(false);
            nextButton.setEnabled(false);
            return;
        }

        Question question = session.get(index);
        if (countSeen) {
            increment(question.id, "seen");
            syncQuestionStat(question.id);
        }
        shuffleOptions(question);

        progressView.setText(
                "Domanda " + (index + 1) + "/" + session.size()
                        + "  Score: " + correctInSession + "/" + index
                        + "  " + question.source + " #" + question.originalNumber
        );
        promptView.setText(question.prompt);

        for (DisplayOption displayOption : currentOptions) {
            CheckBox checkBox = new CheckBox(this);
            checkBox.setText(displayOption.displayLetter + ". " + displayOption.text);
            checkBox.setTextSize(16);
            checkBox.setTextColor(INK);
            checkBox.setPadding(dp(12), dp(10), dp(12), dp(10));
            checkBox.setBackground(cardBackground());
            checkBox.setOnClickListener(v -> enforceAnswerLimit());
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
            );
            params.setMargins(0, 0, 0, dp(8));
            optionsLayout.addView(checkBox, params);
            checkBoxes.put(displayOption.displayLetter, checkBox);
        }

        nextButton.setEnabled(false);
        enforceAnswerLimit();
    }

    private void shuffleOptions(Question question) {
        List<Option> shuffled = new ArrayList<>(question.options);
        Collections.shuffle(shuffled, random);
        String letters = "ABCDEF";

        for (int i = 0; i < shuffled.size(); i++) {
            Option option = shuffled.get(i);
            DisplayOption displayOption = new DisplayOption();
            displayOption.displayLetter = String.valueOf(letters.charAt(i));
            displayOption.originalLetter = option.letter;
            displayOption.text = option.text;
            currentOptions.add(displayOption);
        }
    }

    private void enforceAnswerLimit() {
        if (index >= session.size()) {
            return;
        }

        int limit = session.get(index).correctLetters.size();
        int selectedCount = selectedOriginalLetters().size();
        for (DisplayOption option : currentOptions) {
            CheckBox checkBox = checkBoxes.get(option.displayLetter);
            if (checkBox != null) {
                checkBox.setEnabled(checkBox.isChecked() || selectedCount < limit);
            }
        }
        submitButton.setEnabled(selectedCount == limit && !feedbackShown);
    }

    private Set<String> selectedOriginalLetters() {
        Set<String> selected = new HashSet<>();
        for (DisplayOption option : currentOptions) {
            CheckBox checkBox = checkBoxes.get(option.displayLetter);
            if (checkBox != null && checkBox.isChecked()) {
                selected.add(option.originalLetter);
            }
        }
        return selected;
    }

    private void submitAnswer() {
        if (feedbackShown || index >= session.size()) {
            return;
        }

        Question question = session.get(index);
        Set<String> selected = selectedOriginalLetters();
        boolean correct = selected.equals(question.correctLetters);

        if (correct) {
            increment(question.id, "correct");
            correctInSession += 1;
        } else {
            increment(question.id, "wrong");
        }
        syncQuestionStat(question.id);

        String verdict = correct ? "CORRETTA" : "SBAGLIATA";
        feedbackView.setText(
                verdict
                        + "\n\nLa tua risposta: " + describeLetters(selected)
                        + "\nRisposta corretta: " + describeLetters(question.correctLetters)
        );
        feedbackView.setTextColor(correct ? GREEN : RED);
        feedbackView.setBackground(cardBackground());

        feedbackShown = true;
        submitButton.setEnabled(false);
        nextButton.setEnabled(true);
    }

    private String describeLetters(Set<String> letters) {
        List<String> parts = new ArrayList<>();
        for (DisplayOption option : currentOptions) {
            if (letters.contains(option.originalLetter)) {
                parts.add(option.displayLetter + ". " + option.text);
            }
        }
        return parts.isEmpty() ? "(nessuna)" : join(parts, "; ");
    }

    private void nextQuestion() {
        index += 1;
        showQuestion();
    }

    private void showQuestionEditor() {
        if (index >= session.size()) {
            toast("Non c'è una domanda attiva da modificare.");
            return;
        }
        if (!isOnline()) {
            toast("Fai login a Supabase per modificare il database.");
            showLoginDialog();
            return;
        }

        Question question = session.get(index);
        LinearLayout form = new LinearLayout(this);
        form.setOrientation(LinearLayout.VERTICAL);
        form.setPadding(dp(20), dp(8), dp(20), dp(8));

        TextView promptLabel = new TextView(this);
        promptLabel.setText("Testo della domanda");
        promptLabel.setTextColor(INK);
        form.addView(promptLabel);

        EditText promptEditor = new EditText(this);
        promptEditor.setText(question.prompt);
        promptEditor.setGravity(Gravity.TOP);
        promptEditor.setMinLines(4);
        promptEditor.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        form.addView(promptEditor, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView answersLabel = new TextView(this);
        answersLabel.setText("Risposte (seleziona quelle corrette)");
        answersLabel.setTextColor(INK);
        answersLabel.setPadding(0, dp(12), 0, dp(4));
        form.addView(answersLabel);

        List<EditText> optionEditors = new ArrayList<>();
        List<CheckBox> correctEditors = new ArrayList<>();
        for (Option option : question.options) {
            LinearLayout row = new LinearLayout(this);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);

            CheckBox correct = new CheckBox(this);
            correct.setText(option.letter);
            correct.setChecked(question.correctLetters.contains(option.letter));
            row.addView(correct, new LinearLayout.LayoutParams(dp(64), ViewGroup.LayoutParams.WRAP_CONTENT));

            EditText answer = new EditText(this);
            answer.setText(option.text);
            answer.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
            row.addView(answer, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            form.addView(row);
            correctEditors.add(correct);
            optionEditors.add(answer);
        }

        EditText correctCount = new EditText(this);
        correctCount.setHint("Numero di risposte corrette");
        correctCount.setText(String.valueOf(question.correctLetters.size()));
        correctCount.setInputType(InputType.TYPE_CLASS_NUMBER);
        form.addView(correctCount);

        ScrollView scroll = new ScrollView(this);
        scroll.addView(form);
        AlertDialog dialog = new AlertDialog.Builder(this)
                .setTitle("Modifica domanda " + question.id)
                .setView(scroll)
                .setPositiveButton("Salva nel database", null)
                .setNegativeButton("Annulla", null)
                .create();
        dialog.setOnShowListener(ignored -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            String prompt = promptEditor.getText().toString().trim();
            int expectedCount;
            try {
                expectedCount = Integer.parseInt(correctCount.getText().toString().trim());
            } catch (NumberFormatException error) {
                expectedCount = 0;
            }
            List<Option> updatedOptions = new ArrayList<>();
            Set<String> updatedCorrect = new HashSet<>();
            for (int i = 0; i < question.options.size(); i++) {
                String answerText = optionEditors.get(i).getText().toString().trim();
                if (answerText.isEmpty()) {
                    optionEditors.get(i).setError("Testo obbligatorio");
                    return;
                }
                Option option = new Option();
                option.letter = question.options.get(i).letter;
                option.text = answerText;
                updatedOptions.add(option);
                if (correctEditors.get(i).isChecked()) {
                    updatedCorrect.add(option.letter);
                }
            }
            if (prompt.isEmpty()) {
                promptEditor.setError("Testo obbligatorio");
                return;
            }
            if (expectedCount < 1 || expectedCount > updatedOptions.size()) {
                correctCount.setError("Numero non valido");
                return;
            }
            if (updatedCorrect.size() != expectedCount) {
                correctCount.setError("Indicate " + expectedCount + ", selezionate " + updatedCorrect.size());
                return;
            }

            Question updated = new Question();
            updated.id = question.id;
            updated.source = question.source;
            updated.originalNumber = question.originalNumber;
            updated.prompt = prompt;
            updated.options.addAll(updatedOptions);
            updated.correctLetters.addAll(updatedCorrect);
            dialog.getButton(AlertDialog.BUTTON_POSITIVE).setEnabled(false);
            runNetwork(null, () -> {
                updateQuestion(updated);
                runOnUiThread(() -> {
                    question.prompt = updated.prompt;
                    question.options.clear();
                    question.options.addAll(updated.options);
                    question.correctLetters.clear();
                    question.correctLetters.addAll(updated.correctLetters);
                    dialog.dismiss();
                    showQuestion(false);
                    toast("Domanda aggiornata nel database.");
                });
            });
        }));
        dialog.show();
    }

    private void updateQuestion(Question question) throws Exception {
        JSONObject payload = new JSONObject();
        payload.put("prompt", question.prompt);
        JSONArray options = new JSONArray();
        for (Option option : question.options) {
            JSONObject item = new JSONObject();
            item.put("letter", option.letter);
            item.put("text", option.text);
            options.put(item);
        }
        payload.put("options", options);
        payload.put("correct_letters", new JSONArray(question.correctLetters));
        requestRaw(
                "PATCH",
                "/rest/v1/questions?id=eq." + URLEncoder.encode(question.id, StandardCharsets.UTF_8.name()),
                payload,
                true,
                "return=minimal"
        );
    }

    private void showLoginDialog() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(dp(20), dp(8), dp(20), 0);

        EditText email = new EditText(this);
        email.setHint("Email");
        email.setSingleLine(true);
        email.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS);
        email.setText(userEmail);
        layout.addView(email);

        EditText password = new EditText(this);
        password.setHint("Password");
        password.setSingleLine(true);
        password.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        layout.addView(password);

        new AlertDialog.Builder(this)
                .setTitle("Login Supabase")
                .setView(layout)
                .setPositiveButton("Login", (dialog, which) -> signIn(email.getText().toString().trim(), password.getText().toString()))
                .setNegativeButton("Annulla", null)
                .show();
    }

    private void signIn(String email, String password) {
        if (email.isEmpty() || password.isEmpty()) {
            toast("Inserisci email e password.");
            return;
        }
        if (fullSyncInProgress) {
            toast("Attendi il termine della sincronizzazione in corso.");
            return;
        }
        runNetwork("Login...", () -> {
            JSONObject payload = new JSONObject();
            payload.put("email", email);
            payload.put("password", password);
            JSONObject response = requestJson("POST", "/auth/v1/token?grant_type=password", payload, false, null);
            applyAuthResponse(response);
            fetchRemoteAndMerge();
            runOnUiThread(() -> {
                updateSyncStatus();
                toast("Login effettuato.");
                newSession();
            });
        });
    }

    private void refreshAndSync(boolean showSuccess) {
        if (fullSyncInProgress) {
            if (showSuccess) {
                toast("Sincronizzazione già in corso.");
            }
            return;
        }
        fullSyncInProgress = true;
        new Thread(() -> {
            try {
                if (!refreshToken.isEmpty()) {
                    JSONObject payload = new JSONObject();
                    payload.put("refresh_token", refreshToken);
                    JSONObject response = requestJson("POST", "/auth/v1/token?grant_type=refresh_token", payload, false, null);
                    applyAuthResponse(response);
                }
                fetchRemoteAndMerge();
                runOnUiThread(() -> {
                    fullSyncInProgress = false;
                    updateSyncStatus();
                    if (showSuccess) {
                        toast("Sync completato.");
                    }
                    newSession();
                });
            } catch (Exception error) {
                String message = error.getMessage() == null ? "Errore sconosciuto." : error.getMessage();
                boolean invalidRefreshToken = message.contains("refresh_token_already_used")
                        || message.contains("Invalid Refresh Token")
                        || message.contains("refresh_token_not_found");
                if (invalidRefreshToken) {
                    clearAuthSession();
                }
                runOnUiThread(() -> {
                    fullSyncInProgress = false;
                    updateSyncStatus();
                    if (invalidRefreshToken) {
                        showMessage(
                                "Sessione scaduta",
                                "Il token di accesso non è più valido. Premi Login ed effettua nuovamente l'accesso; le statistiche locali non verranno perse."
                        );
                    } else {
                        showMessage("Sync", message);
                    }
                });
            }
        }).start();
    }

    private void syncNow(boolean showSuccess) {
        if (!isOnline()) {
            toast("Fai login prima di sincronizzare.");
            showLoginDialog();
            return;
        }
        refreshAndSync(showSuccess);
    }

    private void fetchRemoteAndMerge() throws Exception {
        JSONArray questionRows = requestArray(
                "GET",
                "/rest/v1/questions?select=id,source,original_number,prompt,options,correct_letters&order=id.asc",
                null,
                true,
                null
        );
        List<Question> remoteQuestions = new ArrayList<>();
        for (int i = 0; i < questionRows.length(); i++) {
            Question question = parseQuestion(questionRows.getJSONObject(i), false);
            if (question != null) {
                remoteQuestions.add(question);
            }
        }
        if (!remoteQuestions.isEmpty()) {
            questions.clear();
            questions.addAll(remoteQuestions);
        }

        JSONArray statsRows = requestArray(
                "GET",
                "/rest/v1/question_stats?select=question_id,seen,correct,wrong&user_id=eq." + userId,
                null,
                true,
                null
        );
        mergeRemoteStats(statsRows);
        upsertAllStats();
    }

    private void mergeRemoteStats(JSONArray rows) throws Exception {
        for (int i = 0; i < rows.length(); i++) {
            JSONObject row = rows.getJSONObject(i);
            String qid = row.getString("question_id");
            setStat(qid, "seen", Math.max(seen(qid), row.optInt("seen", 0)));
            setStat(qid, "correct", Math.max(stat(qid, "correct"), row.optInt("correct", 0)));
            setStat(qid, "wrong", Math.max(stat(qid, "wrong"), row.optInt("wrong", 0)));
        }
    }

    private void syncQuestionStat(String questionId) {
        if (!isOnline()) {
            return;
        }
        runNetwork(null, () -> upsertStats(Collections.singletonList(questionId)));
    }

    private void upsertAllStats() throws Exception {
        List<String> ids = new ArrayList<>();
        for (Question question : questions) {
            ids.add(question.id);
        }
        upsertStats(ids);
    }

    private void upsertStats(List<String> ids) throws Exception {
        JSONArray payload = new JSONArray();
        for (String id : ids) {
            JSONObject item = new JSONObject();
            item.put("user_id", userId);
            item.put("question_id", id);
            item.put("seen", seen(id));
            item.put("correct", stat(id, "correct"));
            item.put("wrong", stat(id, "wrong"));
            payload.put(item);
        }
        requestRaw(
                "POST",
                "/rest/v1/question_stats?on_conflict=user_id,question_id",
                payload,
                true,
                "resolution=merge-duplicates,return=minimal"
        );
    }

    private void applyAuthResponse(JSONObject response) throws Exception {
        JSONObject user = response.getJSONObject("user");
        accessToken = response.getString("access_token");
        refreshToken = response.optString("refresh_token", refreshToken);
        userId = user.getString("id");
        userEmail = user.optString("email", userEmail);
        prefs.edit()
                .putString("auth_access_token", accessToken)
                .putString("auth_refresh_token", refreshToken)
                .putString("auth_user_id", userId)
                .putString("auth_email", userEmail)
                .apply();
    }

    private void restoreSession() {
        accessToken = prefs.getString("auth_access_token", "");
        refreshToken = prefs.getString("auth_refresh_token", "");
        userId = prefs.getString("auth_user_id", "");
        userEmail = prefs.getString("auth_email", "");
    }

    private void clearAuthSession() {
        accessToken = "";
        refreshToken = "";
        userId = "";
        userEmail = "";
        prefs.edit()
                .remove("auth_access_token")
                .remove("auth_refresh_token")
                .remove("auth_user_id")
                .remove("auth_email")
                .apply();
    }

    private boolean isOnline() {
        return !accessToken.isEmpty() && !userId.isEmpty();
    }

    private void updateSyncStatus() {
        String status = isOnline() ? "Sync online: " + userEmail : "Sync offline";
        syncView.setText(status);
    }

    private void runNetwork(String toastText, NetworkTask task) {
        if (toastText != null) {
            toast(toastText);
        }
        new Thread(() -> {
            try {
                task.run();
            } catch (Exception error) {
                runOnUiThread(() -> {
                    updateSyncStatus();
                    showMessage("Sync", error.getMessage() == null ? "Errore sconosciuto." : error.getMessage());
                });
            }
        }).start();
    }

    private JSONObject requestJson(String method, String path, Object payload, boolean auth, String prefer) throws Exception {
        String raw = requestRaw(method, path, payload, auth, prefer);
        return new JSONObject(raw);
    }

    private JSONArray requestArray(String method, String path, Object payload, boolean auth, String prefer) throws Exception {
        String raw = requestRaw(method, path, payload, auth, prefer);
        return new JSONArray(raw);
    }

    private String requestRaw(String method, String path, Object payload, boolean auth, String prefer) throws Exception {
        URL url = new URL(SUPABASE_URL + path);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod(method);
        connection.setConnectTimeout(20000);
        connection.setReadTimeout(20000);
        connection.setRequestProperty("apikey", SUPABASE_ANON_KEY);
        connection.setRequestProperty("Content-Type", "application/json");
        if (auth) {
            connection.setRequestProperty("Authorization", "Bearer " + accessToken);
        }
        if (prefer != null) {
            connection.setRequestProperty("Prefer", prefer);
        }
        if (payload != null) {
            connection.setDoOutput(true);
            byte[] bytes = payload.toString().getBytes(StandardCharsets.UTF_8);
            try (OutputStream output = connection.getOutputStream()) {
                output.write(bytes);
            }
        }

        int code = connection.getResponseCode();
        InputStream stream = code >= 200 && code < 300 ? connection.getInputStream() : connection.getErrorStream();
        String response = stream == null ? "" : readAll(stream);
        if (code < 200 || code >= 300) {
            throw new Exception("Supabase HTTP " + code + ": " + response);
        }
        return response;
    }

    private String readAll(InputStream stream) throws Exception {
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        byte[] data = new byte[4096];
        int read;
        while ((read = stream.read(data)) != -1) {
            buffer.write(data, 0, read);
        }
        return buffer.toString(StandardCharsets.UTF_8.name());
    }

    private void confirmNewSession() {
        new AlertDialog.Builder(this)
                .setTitle("Nuovo esame")
                .setMessage("Vuoi iniziare una nuova sessione da 65 domande?")
                .setPositiveButton("Si", (dialog, which) -> newSession())
                .setNegativeButton("No", null)
                .show();
    }

    private void confirmReset() {
        new AlertDialog.Builder(this)
                .setTitle("Reset counter")
                .setMessage("Vuoi azzerare contatori di estrazione, corrette e sbagliate?")
                .setPositiveButton("Si", (dialog, which) -> {
                    for (Question question : questions) {
                        setStat(question.id, "seen", 0);
                        setStat(question.id, "correct", 0);
                        setStat(question.id, "wrong", 0);
                    }
                    if (isOnline()) {
                        runNetwork(null, () -> {
                            upsertAllStats();
                            runOnUiThread(() -> toast("Statistiche azzerate."));
                        });
                    }
                    newSession();
                })
                .setNegativeButton("No", null)
                .show();
    }

    private void showStats() {
        int totalSeen = 0;
        int totalCorrect = 0;
        int totalWrong = 0;
        for (Question question : questions) {
            totalSeen += seen(question.id);
            totalCorrect += stat(question.id, "correct");
            totalWrong += stat(question.id, "wrong");
        }

        showMessage(
                "Statistiche",
                "Domande nel database: " + questions.size()
                        + "\nEstrazioni totali: " + totalSeen
                        + "\nRisposte corrette: " + totalCorrect
                        + "\nRisposte sbagliate: " + totalWrong
                        + "\n" + (isOnline() ? "Sync online: " + userEmail : "Sync offline")
        );
    }

    private void showMessage(String title, String message) {
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setMessage(message)
                .setPositiveButton("OK", null)
                .show();
    }

    private void toast(String message) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }

    private int seen(String questionId) {
        return stat(questionId, "seen");
    }

    private int stat(String questionId, String key) {
        return prefs.getInt(questionId + "_" + key, 0);
    }

    private void setStat(String questionId, String key, int value) {
        prefs.edit().putInt(questionId + "_" + key, value).apply();
    }

    private void increment(String questionId, String key) {
        setStat(questionId, key, stat(questionId, key) + 1);
    }

    private String join(List<String> values, String separator) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < values.size(); i++) {
            if (i > 0) {
                builder.append(separator);
            }
            builder.append(values.get(i));
        }
        return builder.toString();
    }

    private int getStatusBarHeight() {
        int resourceId = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (resourceId > 0) {
            return getResources().getDimensionPixelSize(resourceId);
        }
        return dp(24);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    private interface NetworkTask {
        void run() throws Exception;
    }

    private static class Question {
        String id;
        String source;
        String originalNumber;
        String prompt;
        List<Option> options = new ArrayList<>();
        Set<String> correctLetters = new HashSet<>();
    }

    private static class Option {
        String letter;
        String text;
    }

    private static class DisplayOption {
        String displayLetter;
        String originalLetter;
        String text;
    }
}
