<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Time Update Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
    body {
        background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReh5-W6CFci3OsBGQnTthNFEYGZxCv-dEFFZD56yy5z2QqxdkgvHQpEOu-jqPu3taFcck&usqp=CAU') no-repeat center center fixed; /* Add your image path here */
        background-size: cover; /* Ensures the image covers the entire viewport */
        font-family: 'Arial', sans-serif;
        min-height: 100vh;
        margin: 0;
        display: flex; /* Centers the container */
        justify-content: center;
        align-items: center;
    }
    body::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5); /* Adds a dark overlay */
        z-index: -1;
    }
    .container {
        max-width: 400px;
        margin: auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        background-color: rgba(255, 255, 255, 0.9); /*
    
</style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Update Show Time</h1>
        <form:form action="/updateShowTime" method="post" modelAttribute="showTimeRecord">
            <form:hidden path="showTimeId" value="${showtime.showTimeId}"/>
            <div class="form-group">
                <label for="showTimeName">Show Time Name:</label>
                <form:input path="showTimeName" class="form-control" id="showTimeName"/>
            </div>
            <div class="form-group">
                <label for="showTimeRoyalPrice">Royal Price:</label>
                <form:input path="showTimeRoyalPrice" class="form-control" id="showTimeRoyalPrice"/>
            </div>
            
            <div class="form-group">
                <label for="showTimePremierePrice">Premier Price:</label>
                <form:input path="showTimePremierePrice" class="form-control" id="showTimePremierePrice"/>
            </div>
            <button type="submit" class="btn btn-primary btn-lg btn-block">Update</button>
            <button type="reset" class="btn btn-reset">Reset</button>
        </form:form>
        
        <div class="text-center mt-3">
            <a href="/movieReport" class="text-white">Back to Movie Report</a>
        </div>
    </div>
    
    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
