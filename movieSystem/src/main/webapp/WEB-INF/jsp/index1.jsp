<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Movie Booking System</title>

<!-- Font Awesome for Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
    /* Full-screen background image styling */
    body {
        background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20230705/pngtree-3d-render-of-online-ticketing-for-movies-image_3738846.jpg'); /* Replace with the path to your image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
        padding: 0;
        color:black; /* Ensures text is readable on a dark or detailed background */
    }

    /* Main container styling for centered content */
    .main-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent overlay */
        padding: 20px;
    }

    /* Title styling */
    h1 {
        font-family: "Monotype Corsiva", cursive;
        font-size: 3em;
        color: #ffde59;
        text-align: center;
        margin: 0;
        padding-bottom: 20px;
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
    }

    /* Navbar container styling */
    .navbar {
        display: flex;
        justify-content: center;
        background-color: rgba(51, 51, 51, 0.85); /* Slightly transparent */
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.3);
        margin-bottom: 40px;
        postion:relative;
        
    }

    /* Navbar links and dropdown button styling */
    .navbar a, .dropdown .dropbtn {
        font-size: 16px;
        color: black;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        transition: background-color 0.3s, transform 0.3s;
        display: block;
    }

    .navbar a:hover, .dropdown:hover .dropbtn {
        background-color: #f44336;
         /* Subtle scaling on hover */
    }

    /* Dropdown container */
    .dropdown {
       float: left;
      overflow: hidden;
    }

    /* Dropdown content styling */
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #333;
        min-width: 200px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
        border-radius: 5px;
        z-index: 100; /* Ensure dropdown displays on top */
    }

    /* Dropdown links styling */
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        
    }

    .dropdown-content a:hover {
        background-color: #f44336;
    }

    /* Show the dropdown content on hover with animation */
    .dropdown:hover .dropdown-content {
        display: block;
        
    }

    /* Special styling for the logout button */
    .navbar a.logout {
        color: #ff4d4d;
        font-weight: bold;
        padding: 14px 20px;
        margin-left: auto;
        transition: background-color 0.3s, color 0.3s;
    }

    .navbar a.logout:hover {
        background-color: #ff3333;
        color:black;
    }

</style>
</head>
<body>

<div class="main-container">
    <h1>Welcome To Online Movie Booking System</h1>

    <!-- Navbar with dropdowns -->
    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">Movie Management</button>
            <div class="dropdown-content">
                <a href="/addMovie">Movie Addition</a>
                <a href="/movieReportLanguage">Movie ReportbyLanguage</a>
                <!--  a href="/">Movie Deletion</a-->
                <a href="/movieReport">Movie Reports</a>
            </div>
        </div>

        

        <div class="dropdown">
            <button class="dropbtn">Showtime Management</button>
            <div class="dropdown-content">
                <a href="/addShowTime">Showtime Addition</a>
                <a href="/showTimeReport">Showtime Report</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Booking Management</button>
            <div class="dropdown-content">
                <a href="/movieReportLanguage">Movie Report By Language and Booking</a>
                <!--  a href="/">Booking Update</a-->
                <a href="/">Cancellation</a>
                <a href="/">Booking Report</a>
            </div>
        </div>

        <!-- Logout button styled separately -->
        <a href="/logout" class="logout">Logout</a>
    </div>
</div>

</body>
</html>
