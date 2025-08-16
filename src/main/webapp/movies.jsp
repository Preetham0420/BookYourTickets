
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Movies</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #ff9a9e, #fad0c4);
            margin: 0;
            padding: 0;
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
            padding: 10px 20px;
            z-index: 10;
            box-sizing: border-box;
        }
        .header img {
            height: 50px;
        }
        .header .back-button {
            margin-left: auto;
            margin-right: 20px;
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }
        .header .back-button:hover {
            background-color: #e63939;
        }

        .main-content {
            padding: 80px 20px 20px;
            text-align: center;
            color: white;
        }
        h1 {
            font-size: 36px;
            margin-bottom: 30px;
        }
        .movies-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .movie-card {
            background-color: white;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 250px;
            text-align: center;
        }
        .movie-card img {
            width: 100%;
            height: 350px;
            object-fit: cover;
            border-radius: 8px;
        }
        .movie-card h3 {
            margin: 10px 0;
            color: #333;
        }
        .movie-card p {
            margin: 5px 0;
            font-size: 14px;
            color: #555;
        }
        form {
            margin-top: 30px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            max-width: 400px;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        select, input[type="number"] {
            padding: 10px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 16px;
            appearance: none;
            background-color: #f7f7f7;
            color: #555;
        }
        select option {
            color: #555;
        }
        button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        button:hover {
            background-color: #218838;
        }
        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 5px;
            display: block;
            text-align: left;
        }
        .error-message {
            color: red;
            font-size: 12px;
            margin-bottom: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
<div class="header">
    <img src="images/Book%20Your%20Tickets.png" alt="Book Your Tickets">
    <button class="back-button" onclick="location.href='index.jsp'">Back to Home</button>
</div>

<div class="main-content">
    <h1>Now Showing</h1>
    <div class="movies-container">
        <!-- Movies List -->
        <div class="movie-card">
            <img src="images/Amaran.jpg" alt="Amaran">
            <h3>Amaran</h3>
            <p>Action/Drama/Thriller - 120 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Bhool%20Bhulaiyaa%203.jpg" alt="Bhool Bhulaiyaa 3">
            <h3>Bhool Bhulaiyaa 3</h3>
            <p>Comedy/Horror - 150 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Gladiator%20II.jpg" alt="Gladiator II">
            <h3>Gladiator II</h3>
            <p>Action/Adventure/Drama - 140 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Kanguva.jpg" alt="Kanguva">
            <h3>Kanguva</h3>
            <p>Action/Adventure/Fantasy/Period - 130 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Lucky%20Baskhar.jpg" alt="Lucky Baskhar">
            <h3>Lucky Baskhar</h3>
            <p>Crime/Drama/Thriller - 115 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Wicked.png" alt="Wicked">
            <h3>Wicked</h3>
            <p>Fantasy/Drama - 135 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Devaki%20Nandana%20Vasudeva.png" alt="Devaki Nandana Vasudeva">
            <h3>Devaki Nandana Vasudeva</h3>
            <p>Action/Drama - 160 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/The%20Wild%20Robot.png" alt="The Wild Robot">
            <h3>The Wild Robot</h3>
            <p>Action/Adventure/Family - 140 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Venom%20The%20Last%20Dance.png" alt="Venom: The Last Dance">
            <h3>Venom: The Last Dance</h3>
            <p>Action/Adventure/Sci-Fi - 150 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Sookshmadarshini.png" alt="Sookshmadarshini">
            <h3>Sookshmadarshini</h3>
            <p>Family/Thriller - 125 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Singham%20Again.png" alt="Singham Again">
            <h3>Singham Again</h3>
            <p>Action/Drama - 140 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Ka.png" alt="Ka">
            <h3>Ka</h3>
            <p>Drama/Suspense - 130 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Zebra.png" alt="Zebra">
            <h3>Zebra</h3>
            <p>Action/Comedy/Crime/Thriller - 110 minutes</p>
        </div>
        <div class="movie-card">
            <img src="images/Mechanic%20Rocky.png" alt="Mechanic Rocky">
            <h3>Mechanic Rocky</h3>
            <p>Action/Comedy/Drama - 120 minutes</p>
        </div>
        <div class="movie-card">
                            <img src="images/Matka.jpg" alt="Matka">
                            <h3>Matka</h3>
                            <p>Action - 120 minutes</p>
        </div>
        <div class="movie-card">
                    <img src="images/The%20Sabarmati%20Report.jpg" alt="The Sabarmati Report">
                    <h3>The Sabarmati Report</h3>
                    <p>Drama/Historical - 120 minutes</p>
                </div>

    </div>

    <h2>Book Tickets</h2>
    <form id="bookingForm">
        <div id="movieError" class="error-message"></div>
        <label for="movie">Select Movie:</label>
        <select id="movie" name="movie">
            <option value="" disabled selected>Select Movie</option>
            <option value="Amaran">Amaran</option>
            <option value="Bhool Bhulaiyaa 3">Bhool Bhulaiyaa 3</option>
            <option value="Gladiator II">Gladiator II</option>
            <option value="Kanguva">Kanguva</option>
            <option value="Lucky Baskhar">Lucky Baskhar</option>
            <option value="Wicked">Wicked</option>
            <option value="Devaki Nandana Vasudeva">Devaki Nandana Vasudeva</option>
            <option value="The Wild Robot">The Wild Robot</option>
            <option value="Venom The Last Dance">Venom The Last Dance</option>
            <option value="Sookshmadarshini">Sookshmadarshini</option>
            <option value="Singham Again">Singham Again</option>
            <option value="Ka">Ka</option>
            <option value="Zebra">Zebra</option>
            <option value="Mechanic Rocky">Mechanic Rocky</option>
            <option value="Matka">Matka</option>
            <option value="The Sabarmati Report">The Sabarmati Report</option>
        </select>

        <div id="seatsError" class="error-message"></div>
        <label for="seats">Number of Seats:</label>
        <input id="seats" type="number" name="seats" min="1" max="10" placeholder="Enter number of seats">

        <button type="button" onclick="validateForm()">Book Now</button>
    </form>
</div>

<script>
    const ticketPrice = 270;

    function validateForm() {
        const movie = document.getElementById("movie").value;
        const seats = document.getElementById("seats").value.trim();
        const movieError = document.getElementById("movieError");
        const seatsError = document.getElementById("seatsError");

        let isValid = true;

        movieError.textContent = "";
        seatsError.textContent = "";

        if (!movie) {
            movieError.textContent = "Please select a movie.";
            isValid = false;
        }

        if (!seats || isNaN(seats) || seats <= 0) {
            seatsError.textContent = "Please enter a valid number of seats.";
            isValid = false;
        }

        if (isValid) {
            const totalCost = ticketPrice * seats;
            localStorage.setItem("movie", movie);
            localStorage.setItem("seats", seats);
            localStorage.setItem("totalCost", totalCost);
            window.location.href = 'confirmation.jsp';
        }
    }
</script>
</body>
</html>
