
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Options</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 30px auto;
            display: flex;
            gap: 20px;
        }
        .payment-column {
            flex: 2;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .payment-column h3 {
            background-color: #ff4d4d;
            color: white;
            padding: 10px;
            border-radius: 4px;
            font-size: 18px;
            margin-bottom: 15px;
        }
        .payment-options {
            margin-top: 20px;
        }
        .payment-options label {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            cursor: pointer;
        }
        .payment-options input[type="radio"] {
            margin-right: 10px;
        }
        .payment-options img {
            height: 30px;
            margin-right: 10px;
        }
        .card-fields {
            margin-top: 20px;
        }
        .card-fields input {
            display: block;
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .proceed-button {
            background-color: #ff4d4d;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            text-align: center;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
        }
        .proceed-button:hover {
            background-color: #e63939;
        }
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
        .order-summary {
            flex: 1;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            color: #444;
            font-size: 14px;
        }
        .order-summary h4 {
            color: #d9254c;
            font-size: 20px;
            margin-bottom: 15px;
        }
        .order-summary div {
            margin-bottom: 10px;
        }
        .summary-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 8px;
        }
        .summary-item span {
            color: #333;
            font-weight: bold;
        }
        .payable {
            background-color: #fff9db;
            padding: 10px;
            margin-top: 10px;
            border-radius: 4px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Payment Section -->
    <div class="payment-column">
        <h3>Payment Options</h3>
        <!-- Pay by UPI -->
        <div class="payment-options">
            <h4>Pay by any UPI App</h4>
            <label>
                <input type="radio" name="payment-method-upi" value="gpay">
                <img src="images/Google_Pay(1).jpg" alt="Google Pay">
            </label>
            <label>
                <input type="radio" name="payment-method-upi" value="paytm">
                <img src="images/Paytm.png" alt="Paytm">
            </label>
            <label>
                <input type="radio" name="payment-method-upi" value="phonepe">
                <img src="images/PhonePe.png" alt="PhonePe">
            </label>
            <label>
                <input type="radio" name="payment-method-upi" value="amazon">
                <img src="images/Amazon Pay.png" alt="Amazon Pay">
            </label>
        </div>
        <button class="proceed-button" type="button" onclick="validateUPI()">Proceed to Pay (UPI)</button>

        <!-- Pay by Debit/Credit Card -->
        <h4>Pay by Debit/Credit Card</h4>
        <div class="card-fields">
            <input type="text" id="cardNumber" placeholder="Card Number" maxlength="16">
            <input type="text" id="cardExpiry" placeholder="Expiry Date (MM/YY)" maxlength="5">
            <input type="text" id="cardCVV" placeholder="CVV" maxlength="3">
        </div>
        <button class="proceed-button" type="button" onclick="validateCard()">Proceed to Pay (Card)</button>
        <div id="paymentError" class="error-message"></div>
    </div>

    <!-- Order Summary Section -->
    <div class="order-summary">
        <h4>ORDER SUMMARY</h4>
        <div>
            <strong>Movie:</strong> <span id="movieName">Loading...</span>
        </div>
        <div>
            <strong>Seats:</strong> <span id="seats">Loading...</span>
        </div>
        <div>
            <strong>Screen:</strong> <span id="screen">Loading...</span>
        </div>
        <div>
            <strong>Sub Total:</strong> <span id="ticketCost">Loading...</span>
        </div>
        <div>
            <strong>Convenience Fees:</strong> Rs. 66.08
        </div>
        <div class="payable" id="totalAmount">
            Amount Payable: Loading...
        </div>
    </div>
</div>

<script>
    function populateOrderSummary() {
        const movieName = localStorage.getItem("movie") || "Unknown";
        const seats = localStorage.getItem("seatNums") || "No Seats Selected";
        const screen = localStorage.getItem("screenNum") || "Unknown Screen";
        const totalCost = localStorage.getItem("totalCost") || 0;

        document.getElementById("movieName").textContent = movieName;
        document.getElementById("seats").textContent = seats;
        document.getElementById("screen").textContent = screen;
        document.getElementById("ticketCost").textContent = `Rs. ${totalCost}`;
        document.getElementById("totalAmount").textContent = `Amount Payable: Rs. ${(parseFloat(totalCost) + 66.08).toFixed(2)}`;
    }

    function validateUPI() {
        const selectedPayment = document.querySelector('input[name="payment-method-upi"]:checked');
        const paymentError = document.getElementById("paymentError");

        paymentError.textContent = ""; // Clear previous error message

        if (!selectedPayment) {
            paymentError.textContent = "Please select a UPI option.";
            return;
        }

        // Proceed to thank you page
        window.location.href = "thankyou.jsp";
    }

    function validateCard() {
        const cardNumber = document.getElementById("cardNumber").value.trim();
        const cardExpiry = document.getElementById("cardExpiry").value.trim();
        const cardCVV = document.getElementById("cardCVV").value.trim();
        const paymentError = document.getElementById("paymentError");

        paymentError.textContent = ""; // Clear previous error message

        if (cardNumber.length !== 16 || isNaN(cardNumber)) {
            paymentError.textContent = "Invalid Card Number.";
            return;
        }

        if (!/^\d{2}\/\d{2}$/.test(cardExpiry)) {
            paymentError.textContent = "Invalid Expiry Date (MM/YY).";
            return;
        }

        if (cardCVV.length !== 3 || isNaN(cardCVV)) {
            paymentError.textContent = "Invalid CVV.";
            return;
        }

        // Proceed to thank you page
        window.location.href = "thankyou.jsp";
    }

    window.onload = populateOrderSummary;
</script>
</body>
</html>
