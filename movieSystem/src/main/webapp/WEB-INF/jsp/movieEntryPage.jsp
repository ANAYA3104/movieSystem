<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Entry Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Background Styling */
        body {
            background: url('https://user-images.githubusercontent.com/16425113/129554147-6ac7ba51-43e7-4c8e-ba77-e646a3ef6b12.jpg') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Form Container */
        .movie-container {
            max-width: 800px;
            margin: 80px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Heading Styling */
        h2 {
            font-family: 'Arial Black', sans-serif;
            color: #333;
            text-align: center;
            font-size: 1.8em;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="movie-container">
        <h2>Movie Entry Page</h2>
        <form:form id="movieForm" action="/addMovie" method="post" modelAttribute="movieRecord" class="mt-4">

            <div class="mb-3">
                <label class="form-label">Enter Movie Id</label>
                <form:input path="movieId" id="movieId" class="form-control" />
            </div>

            <div class="mb-3">
                <label class="form-label">Enter Movie Name</label>
                <form:input id="movieName" path="movieName" class="form-control" />
            </div>

            <div class="mb-3">
                <label class="form-label">Enter Movie Language</label>
                <form:input path="language" id="language" class="form-control" />
            </div>

            <div class="mb-3">
                <label class="form-label">Enter Genre</label>
                <form:input path="genre" id="genre" class="form-control" />
            </div>

            <div class="mb-3">
                <label class="form-label">Enter Duration</label>
                <form:input path="duration" id="duration" class="form-control" />
            </div>

            <div class="mb-3">
                <label class="form-label">Enter Ratings</label>
                <form:input id="ratings" path="ratings" class="form-control" />
            </div>

            <h2>ShowTime Entry</h2>
            <table class="table table-bordered">
                <tr>
                    <th>Show Time</th>
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

        </form:form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
