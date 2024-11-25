<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Show Time Update Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background image */
        body {
            background-image: url('https://img.freepik.com/free-photo/assortment-cinema-elements-red-background-with-copy-space_23-2148457848.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }

        /* Container for the page content */
        .container {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background for the form */
            padding: 40px;
            border-radius: 10px;
            margin-top: 80px;
            width: 80%;
        }

        /* Heading */
        h1, h2 {
            text-align: center;
            text-decoration: underline;
            color: #f1c40f; /* Gold color for headings */
        }

        h1 {
            font-size: 2.5em;
        }

        h2 {
            font-size: 1.8em;
        }

        /* Table styles */
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #34495e;
            color: #ecf0f1;
            font-weight: bold;
        }

        td {
            background-color: #2c3e50;
            color: #ecf0f1;
        }

        /* Input and select styles */
        input[type="text"], input[list] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 2px solid #2980b9;
            border-radius: 5px;
            background-color: #34495e;
            color: white;
        }

        input[type="text"]:focus, input[list]:focus {
            border-color: #f39c12;
            outline: none;
        }

        /* Bootstrap button enhancements */
        .btn {
            width: 100%;
            padding: 12px;
            font-size: 1.1em;
            border-radius: 5px;
            margin-top: 20px;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background-color: #2980b9;
            border: none;
        }

        .btn-primary:hover {
            background-color: #3498db;
        }

        .btn-secondary {
            background-color: #7f8c8d;
            border: none;
        }

        .btn-secondary:hover {
            background-color: #95a5a6;
        }

        /* Button grid layout */
        .d-grid {
            width: 100%;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }

            h1 {
                font-size: 2em;
            }

            h2 {
                font-size: 1.5em;
            }
        }

    </style>
</head>
<body>

<div class="container">
    <h1>Movie Details</h1>
    <h2>Update Show Time</h2>

    <form action="/updateMovieShow" method="post">
        <input type="hidden" name="movieId" value="${movie.movieId}"/>

        <table>
            <tr>
                <td>The Movie Id:</td>
                <td>${movie.movieId}</td>
            </tr>
            <tr>
                <td>Movie Name:</td>
                <td>${movie.movieName}</td>
            </tr>
            <tr>
                <td>Movie Language:</td>
                <td>${movie.language}</td>
            </tr>
            <tr>
                <td>Movie Genre:</td>
                <td>${movie.genre}</td>
            </tr>
            <tr>
                <td>Movie Duration:</td>
                <td>${movie.duration}</td>
            </tr>
            <tr>
                <td>Movie Ratings:</td>
                <td>${movie.ratings}</td>
            </tr>
        </table>

        <h3 class="mt-4">Show Time Update</h3>

        <table>
            <tr>
                <th>Show TimeId</th>
                <th>Premier Seats</th>
                <th>Royal Seats</th>
            </tr>
            <c:forEach var="index" begin="1" end="6">
                <tr>
                    <td>
                        <input list="shows" name="show${index}" class="form-control"/>
                        <datalist id="shows">
                            <c:forEach items="${showTimeList}" var="sid">
                                <option value="${sid}"></option>
                            </c:forEach>
                        </datalist>
                    </td>
                    <td><input type="text" name="premier${index}" value="---" class="form-control"/></td>
                    <td><input type="text" name="royal${index}" value="---" class="form-control"/></td>
                </tr>
            </c:forEach>
        </table>

        <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
