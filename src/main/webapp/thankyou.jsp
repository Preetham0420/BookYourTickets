
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank You</title>
    <style>
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
            color: white;
        }

        .thank-you-container {
            background-color: white;
            color: #333;
            text-align: center;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 90%;
        }

        h1 {
            font-size: 36px;
            color: #28a745;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            padding: 12px 20px;
            background-color: #ff4d4d;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #e63939;
        }
    </style>
</head>
<body>
<div class="thank-you-container">
    <h1>Thank You!</h1>
    <p>Your booking and payment were successful. We hope you enjoy your movie!</p>
    <a onclick="(()=> window.location.href = 'http://localhost:8080/BookYourTickets/')()">Back to Home</a>
</div>
</body>
</html>