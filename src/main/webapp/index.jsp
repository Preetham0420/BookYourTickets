
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Your Tickets - Login</title>
    <style>
        /* Your styles remain unchanged */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            color: white;
            padding: 15px 30px;
            z-index: 10;
            box-sizing: border-box;
        }

        .header img {
            height: 50px;
        }

        .header .button-container {
            display: flex;
            align-items: center;
        }

        .header button {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        .header button:hover {
            background-color: #e63939;
        }

        .login-container {
            display: flex;
            width: 90%;
            max-width: 800px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin-top: 80px;
            height: 400px;
        }

        .login-left, .login-right {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .login-left {
            background-color: #fff;
        }

        .login-left h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .login-left form {
            width: 100%;
            max-width: 300px;
        }

        .login-left label {
            font-size: 14px;
            color: #666;
            margin-bottom: 5px;
        }

        .login-left input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .login-left button {
            width: 100%;
            background: linear-gradient(90deg, #ff416c, #ff4b2b);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .login-left button:hover {
            background: linear-gradient(90deg, #ff4b2b, #ff416c);
        }

        .login-right {
            background: linear-gradient(90deg, #ff416c, #ff4b2b);
            color: white;
            text-align: center;
        }

        .login-right h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .login-right p {
            font-size: 14px;
            margin-bottom: 20px;
        }

        .login-right a {
            color: white;
            padding: 10px 20px;
            border: 1px solid white;
            border-radius: 4px;
            text-decoration: none;
            font-size: 14px;
            transition: background 0.3s ease, color 0.3s ease;
        }

        .login-right a:hover {
            background-color: white;
            color: #ff416c;
        }

        .footer {
            width: 100%;
            background-color: #333;
            color: white;
            text-align: center;
            padding: 5px 0;
            position: fixed;
            bottom: 0;
        }

        .footer span {
            color: #ff4d4d;
        }
    </style>
    <script>
        function validateLoginForm() {
            const username = document.getElementById("username").value.trim();
            const password = document.getElementById("password").value.trim();

            if (username === "") {
                alert("Username is required.");
                document.getElementById("username").focus();
                return false;
            }

            if (password === "") {
                alert("Password is required.");
                document.getElementById("password").focus();
                return false;
            }

            return true; // Proceed to movies.jsp if both fields are filled
        }
    </script>
</head>
<body>
<!-- Header -->
<div class="header">
    <img src="images/Book Your Tickets.png" alt="Book Your Tickets">
    <div class="button-container">
        <button onclick="location.href='register.jsp'">Sign Up</button>
    </div>
</div>

<!-- Login Container -->
<div class="login-container">
    <!-- Left Section -->
    <div class="login-left">
        <h2>Login</h2>
        <form action="movies.jsp" method="post" onsubmit="return validateLoginForm();">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Password" required>

            <button type="submit">Login</button>
        </form>
    </div>

    <!-- Right Section -->
    <div class="login-right">
        <h3>Welcome to Book Your Tickets</h3>
        <p>Don't have an account?</p>
        <a href="register.jsp">Sign Up</a>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; <span>Book Your Tickets</span>. All Rights Reserved.</p>
</div>

</body>
</html>
