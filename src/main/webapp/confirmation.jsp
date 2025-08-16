
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Summary</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: left;
        }
        .header {
            text-align: center;
            color: #d9254c;
            font-size: 18px;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .details {
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
        }
        .details strong {
            color: #444;
        }
        .amount-summary {
            border-top: 1px solid #ccc;
            margin-top: 10px;
            padding-top: 10px;
        }
        .amount-summary .item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 8px;
            font-size: 15px;
            color: #666;
        }
        .amount-summary .total {
            font-weight: bold;
            color: #444;
        }
        .payable {
            background-color: #fff9db;
            padding: 10px;
            margin-top: 10px;
            border-radius: 4px;
            text-align: center;
            font-size: 18px;
            color: #333;
            font-weight: bold;
        }
        button {
            display: block;
            background-color: #ff4d4d;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            width: 100%;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">BOOKING SUMMARY</div>

    <div class="details"><strong id="seats">GOLD - </strong></div>
    <div class="details" id="screen">Screen </div>

    <div class="amount-summary">
        <div class="item">
            <span>Tickets</span>
            <span id="ticketCost">Rs. 0</span>
        </div>
        <div class="item">
            <span>Convenience fees</span>
            <span>Rs. 66.08</span>
        </div>
        <div class="item total">
            <span>Sub Total</span>
            <span id="amountPayable">Rs. 0</span>
        </div>
    </div>

    <div class="payable" id="amountPayableDiv">Amount Payable: Rs. 0</div>

    <form action="payment" method="post">
        <input type="hidden" name="amount" id="hiddenAmount" value="0">
        <button type="button" onclick="nextPage()">Proceed to Payment</button>
    </form>
</div>

<script>
    function getSeats() {
        const seats = parseInt(localStorage.getItem("seats") || "0", 10);
        const totalCost = localStorage.getItem("totalCost");
        const randomScreen = Math.floor(Math.random() * 8) + 1;

        let arr = Array.from({ length: 30 }, (_, i) => `L${i + 1}`);
        let randomSeats = [];

        for (let i = 0; i < seats; i++) {
            const index = Math.floor(Math.random() * arr.length);
            randomSeats.push(arr[index]);
            arr.splice(index, 1);
        }

        const seatString = `GOLD - ${randomSeats.join(", ")} (${seats} Tickets)`;

        document.getElementById("seats").textContent = seatString;
        document.getElementById("screen").textContent = `Screen ${randomScreen}`;
        document.getElementById("ticketCost").textContent = `Rs. ${totalCost}`;
        document.getElementById("amountPayable").textContent = `Rs. ${(parseFloat(totalCost) + 66.08).toFixed(2)}`;
        document.getElementById("amountPayableDiv").textContent = `Amount Payable: Rs. ${(parseFloat(totalCost) + 66.08).toFixed(2)}`;
        document.getElementById("hiddenAmount").value = (parseFloat(totalCost) + 66.08).toFixed(2);

        // Save seat and screen info
        localStorage.setItem("seatNums", seatString);
        localStorage.setItem("screenNum", `Screen ${randomScreen}`);
    }

    function nextPage() {
        window.location.href = 'payment.jsp';
    }

    window.onload = getSeats;
</script>

</body>
</html>
