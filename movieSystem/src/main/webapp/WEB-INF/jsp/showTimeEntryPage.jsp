<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Time Entry Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Background image and overlay styling */
        body {
            background: url('https://i.pinimg.com/736x/bd/ac/32/bdac327b05ddaa05216dfa08c9e734c3.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
            position: relative;
            color: #333;
            font-size: 18px; /* Base font size for general text */
        }

        /* Overlay to darken the background */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        /* Form container styling */
        .container {
            max-width: 600px; /* Increased container width */
            padding: 40px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            margin: auto;
            z-index: 1;
        }

        /* Heading styling */
        h1 {
            margin-bottom: 30px;
            color: #0056b3;
            font-size: 2.2em; /* Larger font size for the heading */
            text-align: center;
        }

        /* Label styling */
        label {
            font-weight: bold;
            color: #333;
            font-size: 1.2em; /* Larger font size for labels */
        }

        /* Input field styling */
        .form-control {
            font-size: 1.1em; /* Larger font size for input fields */
            padding: 10px;
        }

        /* Button styling */
        .btn {
            font-size: 1.2em; /* Larger font size for buttons */
            padding: 10px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .btn:hover {
            background-color: #004080;
            transform: translateY(-2px);
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Show Time Entry Page</h1>
        <form:form action="/addShowTime" method="post" modelAttribute="ShowTimeRecord">
            <form:hidden path="showTimeId"/> 
            <form:hidden path="showTimeRoyalPrice"/> 

            <div class="form-group">
                <label for="showTimeName">Enter Show Time Name:</label>
                <form:input path="showTimeName" class="form-control" id="showTimeName"/> 
            </div>

            <div class="form-group">
                <label for="showTimePremierePrice">Enter Premiere Price:</label>
                <form:input path="showTimePremierePrice" class="form-control" id="showTimePremierePrice"/> 
            </div>

            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
            <button type="reset" class="btn btn-secondary btn-lg btn-block">Reset</button>
            <a href="/showTimeReport" class="btn btn-danger btn-lg btn-block">Cancel</a> 
        </form:form>
    </div>
</body>
</html>
