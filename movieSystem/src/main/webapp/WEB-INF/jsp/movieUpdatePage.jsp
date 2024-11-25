<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Update</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-image: url('https://img.freepik.com/free-photo/assortment-cinema-elements-red-background-with-copy-space_23-2148457848.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff; /* Text color */
        }

        .container {
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background for readability */
            padding: 30px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        .btn-custom {
            background-color: #007bff;
            color: #fff;
            border: none;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        .btn-reset {
            background-color: #dc3545;
            color: #fff;
            border: none;
        }

        .btn-reset:hover {
            background-color: #c82333;
        }

        /* Attribution text */
        .attribution {
            text-align: center;
            font-size: 12px;
            color: #fff;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Movie Details</h2>

        <!-- Spring form tag with modelAttribute for binding -->
        <form:form action="/updateMovie" method="POST" modelAttribute="movie">
            
            <!-- Display Movie ID as read-only -->
            <div class="mb-3">
                <label for="movieId" class="form-label">Movie ID</label>
                <form:input id="movieId" path="movieId" readonly="true" class="form-control" />
            </div>

            <!-- Display Movie Name as read-only -->
            <div class="mb-3">
                <label for="movieName" class="form-label">Movie Name</label>
                <form:input id="movieName" path="movieName" readonly="true" class="form-control" />
            </div>

            <!-- Display Movie Language as read-only -->
            <div class="mb-3">
                <label for="language" class="form-label">Movie Language</label>
                <form:input id="language" path="language" readonly="true" class="form-control" />
            </div>

            <!-- Display Movie Genre as read-only -->
            <div class="mb-3">
                <label for="genre" class="form-label">Movie Genre</label>
                <form:input id="genre" path="genre" readonly="true" class="form-control" />
            </div>

            <!-- Editable Duration field -->
            <div class="mb-3">
                <label for="duration" class="form-label">Updated Duration</label>
                <form:input id="duration" path="duration" required="true" class="form-control" />
            </div>

            <!-- Editable Ratings field -->
            <div class="mb-3">
                <label for="ratings" class="form-label">Updated Ratings</label>
                <form:input id="ratings" path="ratings" required="true" class="form-control" />
            </div>

            <!-- Submit and Reset buttons -->
            <div class="text-center">
                <button type="submit" class="btn btn-custom">Update Movie</button>
                <button type="reset" class="btn btn-reset">Reset</button>
            </div>
        </form:form>

        <!-- Link to navigate back to Movie Report -->
        <div class="text-center mt-3">
            <a href="/movieReport" class="text-white">Back to Movie Report</a>
        </div>
    </div>
    
    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    
</body>
</html>
