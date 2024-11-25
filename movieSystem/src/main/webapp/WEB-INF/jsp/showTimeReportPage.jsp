<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Time Report</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Background image and overlay styling */
        body {
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReh5-W6CFci3OsBGQnTthNFEYGZxCv-dEFFZD56yy5z2QqxdkgvHQpEOu-jqPu3taFcck&usqp=CAU') no-repeat center center fixed; /* Add your image path here */
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            font-family: 'Arial', sans-serif;
            margin: 0;
            position: relative;
            color: #333;
        }
        
        /* Semi-transparent overlay to darken background */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Adjust opacity for effect */
            z-index: -1;
        }
        
        /* Main container styling */
        .container {
            margin-top: 40px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent background for better readability */
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            max-width: 800px;
        }
        
        /* Heading style */
        h1 {
            color: midnightblue;
            margin-bottom: 30px;
            font-family: 'Arial Black', sans-serif;
            font-size: 2em;
            text-align: center;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
        }
        
        /* Table and header styling */
        table {
            border-collapse: collapse;
            width: 100%;
        }
        
        th {
            background-color: midnightblue;
            color: white;
            text-align: center;
            font-weight: bold;
            font-size: 1.1em;
        }
        
        td {
            text-align: center;
            vertical-align: middle;
            color: #333;
            font-size: 1em;
        }
        
        /* Button styling */
        .btn {
            margin: 5px;
            font-size: 0.9em;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        
        .btn-danger {
            background-color:midnightblue;
            border-color:midnightblue;
        }
        
        .btn-primary {
            background-color: #4a90e2;
            border-color: #4a90e2;
        }
        
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
            color: #ffffff;
        }

        /* Hover effects for buttons */
        .btn-danger:hover {
            background-color:midnightblue;
            border-color: midnightblue;
        }
        
        .btn-primary:hover {
            background-color: #3b79c2;
            border-color: #3b79c2;
        }
        
        .btn-secondary:hover {
            background-color: #5a6268;
            border-color: #5a6268;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Show Time Report</h1>

        <table class="table table-bordered table-hover">
            <thead>
                 <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Premium Price</th>
                        <th>Royal Price</th>
                        <th>Show Time Deletion</th>
                        <th>Show Time Updation</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${showTimeList}" var="showtime">
                        <tr>
                            <td>${showtime.showTimeId}</td>
                            <td>${showtime.showTimeName}</td>
                            <td>${showtime.showTimePremierePrice}</td>
                            <td>${showtime.showTimeRoyalPrice}</td>
                            <td>
                                <a href="/showTimeDeletion/${showtime.showTimeId}" 
                                   class="action-link btn-delete">Delete</a>
                            </td>
                            <td>
                                <a href="/updateShowTime/${showtime.showTimeId}" 
                                   class="action-link btn-update">Update</a>
                            </td>
                        </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="text-center">
            <a href="/index" class="btn btn-secondary">Return</a>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
