<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
        /* Page Background with Image */
        body {
            background: url('https://user-images.githubusercontent.com/16425113/129554147-6ac7ba51-43e7-4c8e-ba77-e646a3ef6b12.jpg') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover; /* Ensures the image covers the full page */
            background-position: center; /* Centers the background image */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            background-attachment: fixed; /* Keeps the image fixed when scrolling */
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        /* Title Styling */
        h1 {
            font-size: 2em;
            color: #fff;
            text-decoration: underline;
            margin-bottom: 20px;
            font-family: 'Arial Black', sans-serif;
        }

        h3 {
            color: #fff;
            font-size: 1.2em;
            margin-top: 20px;
        }

        /* Table Styling */
        table {
            margin: 0 auto;
            width: 90%;
            max-width: 1200px;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent background for better readability */
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #3b5998;
            color: #fff;
            font-weight: bold;
            font-size: 1em;
        }

        td {
            background-color: #fff;
            color: #333;
        }

        /* Row Hover Effect */
        tr:hover {
            background-color: rgba(0, 0, 0, 0.05);
        }

        /* Links Styling */
        a {
            color: #3b5998;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #dd3e3e;
            text-decoration: underline;
        }

        /* Button-Like Back Link */
        h3 a {
            background: #3b5998;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
        }

        h3 a:hover {
            background: #dd3e3e;
        }

    </style>
    <div>
        <h1>Movie Report</h1>
        <table border="2">
            <tr>
                <th>Movie Number</th>
                <th>Movie Name</th>
                <th>Language</th>
                <th>Genre</th>
                <th>Duration</th>
                <th>Rating</th>
                <th>Show Details</th>
                 </tr>
            <c:forEach items="${movieList}" var="movie">
                <tr>
                    <td>${movie.movieId}</td>
                    <td>${movie.movieName}</td>
                    <td>${movie.language}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.duration}</td>
                    <td>${movie.ratings}</td>
                    <td>
                        <c:forEach items="${movieMap}" var="showTime">
                            <c:if test="${movie.movieId==showTime.key}">
                                <c:forEach items="${showTime.value}" var="show">
                                    <table>
                                        <tr>
                                            <td>Show Time Name:</td>
                                            <td>${show.showTimeName}</td>
                                        </tr>
                                        <tr>
                                            <td>Royal Seat:</td>
                                            <td>${show.royalSeatNumber}</td>
                                        </tr>
                                        <tr>
                                            <td>Royal Booked:</td>
                                            <td>${show.royalBooked}</td>
                                        </tr>
                                        <tr>
                                            <td>Premier Seat:</td>
                                            <td>${show.premierSeatNumber}</td>
                                        </tr>
                                        <tr>
                                            <td>Premier Booked:</td>
                                            <td>${show.premierBooked}</td>
                                        </tr>
                                    </table>
                                    <div class="separator">----------------------------------</div>
                                </c:forEach>
                            </c:if>
                        </c:forEach>
                    </td>
                    </tr>
            </c:forEach>
        </table>
        <h3><a href="/index">Return</a></h3>
    </div>

</body>
</html>