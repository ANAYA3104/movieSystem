<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>

<style>
    /* Set the background image and styling */
    body {
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3bybUWQf-vlZfrCpAnWBF-6Gbv_dldxerfg&s'); /* Replace with your image path */
        background-size: cover;
        background-position: center;
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
        padding: 0;
        filter: contrast(1.2); 
    }

    /* Center container for the form */
    .form-container {
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        width: 400px;
        margin: 100px auto;
        color: black;
        text-align: left; /* Align text to the left */
    }

    /* Form title styling */
    h2 {
        color: #333;
        font-size: 1.8em;
        margin-bottom: 20px;
        text-align: center;
        text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
    }

    /* Form labels and inputs styling */
    .form-container label, .form-container input, .form-container select {
        font-size: 1em;
        color: black;
        margin-bottom: 10px;
        display: block;
        width: 100%;
    }

    /* Styling for text inputs */
    .form-container input[type="text"],
    .form-container input[type="password"],
    .form-container input[type="email"] {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: calc(100% - 22px);
        margin-bottom: 20px;
        color: black;
    }

    /* Styling for the buttons */
    .form-container button {
        background-color: #4CAF50; /* Green color */
        color: white;
        border: none;
        padding: 12px 20px;
        text-align: center;
        font-size: 1em;
        margin: 8px 0;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s;
    }

    /* Button hover effect */
    .form-container button:hover {
        background-color: #45a049;
    }

    /* Style for reset button */
    .form-container button[type="reset"] {
        background-color: #f44336;
    }

    .form-container button[type="reset"]:hover {
        background-color: #e53935;
    }
</style>

<script type="text/javascript">
    function passwordCheck() {
        var pass1 = document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;

        if (pass1.length < 5 || pass1.length > 10) {
            alert("Password length must be between 5 to 10 characters");
            return;
        }
        if (pass1 === pass2) {
            document.getElementById("registrationForm").submit();
        } else {
            alert("Passwords do not match");
        }
    }
</script>
</head>

<body>
<div class="form-container">
    <h2>Register New User</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
        
        <!-- User ID -->
        <label for="username">Enter New User ID:</label>
        <form:input type="text" id="username" path="username" placeholder="Enter your username"/>

        <!-- Password -->
        <label for="pass1">Enter New Password:</label>
        <form:input type="password" id="pass1" path="password" placeholder="Enter your password"/>

        <!-- Confirm Password -->
        <label for="pass2">Re-type New Password:</label>
        <input type="password" id="pass2" placeholder="Re-enter your password"/>

        <!-- Full Name -->
        <label for="name">Enter User's Full Name:</label>
        <form:input type="text" id="name" path="name" placeholder="Enter your full name"/>

        <!-- Email -->
        <label for="email">Enter Email:</label>
        <form:input type="email" id="email" path="email" placeholder="Enter your email"/>

        <!-- User Role Selection -->
        <label for="type">Select User Role:</label>
        <form:input list="types" name="type" id="type" path="role" placeholder="Choose your role"/>
        <datalist id="types">
            <option value="Customer">
            <option value="Admin">
        </datalist>

        <!-- Buttons -->
        <button type="button" onclick="passwordCheck();">Submit</button>
        <button type="reset">Reset</button>
    </form:form>
</div>
</body>
</html>
