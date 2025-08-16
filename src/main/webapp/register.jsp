
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Your Tickets - Sign Up</title>
    <style>
        /* Styling remains unchanged */
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
        .signup-container {
            width: 90%;
            max-width: 400px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
        }
        .signup-container h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        .signup-container form {
            width: 100%;
        }
        .signup-container label {
            font-size: 14px;
            color: #666;
            margin-bottom: 5px;
            display: block;
            text-align: left;
        }
        .signup-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        .signup-container button {
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
        .signup-container button:hover {
            background: linear-gradient(90deg, #ff4b2b, #ff416c);
        }
        .signup-container a {
            display: block;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }
        .signup-container a:hover {
            text-decoration: underline;
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
</head>
<body>
<!-- Header -->
<div class="header">
    <img src="images/Book%20Your%20Tickets.png" alt="Book Your Tickets">
    <div class="button-container">
        <button onclick="location.href='index.jsp'">Back to Login</button>
    </div>
</div>

<!-- Sign Up Container -->
<div class="signup-container">
    <h2>Sign Up</h2>
    <form id="signupForm" onsubmit="handleSignUp(event)">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Username" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Password" required>

        <label for="confirm-password">Confirm Password</label>
        <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm Password" required>

        <button type="submit">Sign Up</button>
    </form>
    <a href="index.jsp">Already have an account? Login here</a>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; <span>Book Your Tickets</span>. All Rights Reserved.</p>
</div>

<script>
    function handleSignUp(event) {
        event.preventDefault(); // Prevent the form from submitting
        const username = document.getElementById("username").value.trim();
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value.trim();
        const confirmPassword = document.getElementById("confirm-password").value.trim();

        if (password !== confirmPassword) {
            alert("Passwords do not match.");
            return;
        }

        // Simulate account creation
        alert(`Account created successfully for ${username}.`);

        // Redirect to login page
        window.location.href = "index.jsp";
    }
</script>
</body>
</html>
