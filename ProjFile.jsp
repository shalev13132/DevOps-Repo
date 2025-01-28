<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Verification Form</title>
</head>
<body>
    <h1>DevOps Verification Form</h1>

    <!-- טופס הזנה -->
    <form method="post">
        <label for="inputValue">Enter a value to verify:</label>
        <input type="text" id="inputValue" name="inputValue" required>
        <button type="submit">Verify</button>
    </form>

    <hr>

    <% 
        // משתנה לאחסון הודעות
        StringBuilder messages = new StringBuilder();
        boolean isValid = true;

        // בדוק אם הטופס נשלח
        String inputValue = request.getParameter("inputValue");
        if (inputValue != null) { // הטופס נשלח
            // בדיקה 1: האם השדה אינו ריק
            if (inputValue.trim().isEmpty()) {
                messages.append("<p style='color:red;'>Input is empty.</p>");
                isValid = false;
            }

            // בדיקה 2: האם הקלט הוא מספר בלבד
            boolean isNumeric = true;
            int numericValue = 0;
            try {
                numericValue = Integer.parseInt(inputValue);
            } catch (NumberFormatException e) {
                isNumeric = false;
                messages.append("<p style='color:red;'>Input is not a valid number.</p>");
                isValid = false;
            }

            // בדיקה 3: האם הקלט מכיל לפחות 5 תווים
            if (inputValue.length() < 5) {
                messages.append("<p style='color:red;'>Input is less than 5 characters long.</p>");
                isValid = false;
            }

            // בדיקה 4: האם הקלט נמצא בטווח בין 10 ל-100
            if (isNumeric && (numericValue < 10 || numericValue > 100)) {
                messages.append("<p style='color:red;'>Input is not in the range (10-100).</p>");
                isValid = false;
            }

            // תוצאה סופית
            if (isValid) {
                messages.append("<p style='color:green;'>All verifications passed successfully!</p>");
            }
        }

        // הצגת ההודעות
        out.print(messages.toString());
    %>

</body>
</html>
