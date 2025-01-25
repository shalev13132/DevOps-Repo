< page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8">
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple JSP Page</title>
</head>
<body>
    <h1>Welcome to the JSP Page</h1>

    <!-- Input text box -->
    <form action="process.jsp" method="post">
        <label for="username">Enter your name:</label>
        <input type="text" id="username" name="username" placeholder="Your Name is ssss123sss">
        <button type="submit">Submit</button>
    </form>

    <!-- Link button -->
    <br>
    <a href="https://example.com" target="_blank">
        <button>Go to Example</button>
    </a>
</body>
</html>