<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movies in ${selectedLanguage}</title>
    <style>
        /* Add background image */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: url('https://media.istockphoto.com/id/1566653954/photo/hands-holding-clapper-board-making-video-cinema-in-the-studio-movie-production-clapper-board.jpg?s=612x612&w=0&k=20&c=gERQXhB-ZVmlDE71IrexizArD-sxz-pOKToMvyqlQ24=') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff; /* White text for better readability on the dark background */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Overlay effect to darken the background */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6); /* Dark overlay */
            z-index: -1;
        }

        .movie-container {
            width: 80%;
            padding: 30px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.1); /* Semi-transparent background */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.7);
            text-align: center;
        }

        h2 {
            font-size: 2.5em;
            font-weight: bold;
            margin-bottom: 20px;
            color: #ffd700; /* Gold color for heading */
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.8);
        }

        .movie-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); /* Flexible grid */
            gap: 20px;
        }

        .movie-item {
            background-color: rgba(255, 255, 255, 0.8); /* Light card background */
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5);
            color: #333;
        }

        .movie-item h3 {
            font-size: 1.5em;
            font-weight: bold;
            color: #333333; /* Darker text for contrast */
            margin-bottom: 10px;
            text-shadow: 1px 1px 5px rgba(255, 255, 255, 0.8);
        }

        .movie-item p {
            font-size: 1em;
            margin: 5px 0;
            color: #555555; /* Subtle dark gray text */
        }

        .movie-item p span {
            font-weight: bold;
            color: #000000; /* Highlighted numbers */
        }

        /* Hover effect for movie cards */
        .movie-item:hover {
            transform: scale(1.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.7);
        }
    </style>
</head>
<body>
    <div class="movie-container">
        <h2>Movies in ${selectedLanguage}</h2>

        <div class="movie-list">
            <c:forEach var="movie" items="${movieList}">
                <div class="movie-item">
                    <h3>${movie.movieName}</h3>
                    <c:forEach var="movieShowDTO" items="${movieMap[movie.movieId]}">
                        <p>Showtime: <span>${movieShowDTO.showTimeName}</span></p>
                        <p>Royal Seats: <span>${movieShowDTO.royalSeatNumber}</span> (Booked: <span>${movieShowDTO.royalBooked}</span>)</p>
                        <p>Premier Seats: <span>${movieShowDTO.premierSeatNumber}</span> (Booked: <span>${movieShowDTO.premierBooked}</span>)</p>
                        
                    </c:forEach>
                    <p><a href="/bookMovie/${movie.movieId}">Book Movie</a>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
