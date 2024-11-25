<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Error</title>
<style>
    /* Full-screen background image */
    body {
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiPPvh0DxpN_P15T79R5WM8ETCG-0pZvpc1A&s'); /* Replace with your image path */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: Arial, sans-serif;
        filter: contrast(1.2); 
    }

    /* Overlay for the dialog box */
    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.6); /* Semi-transparent black overlay */
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Dialog box styling */
    .dialog-box {
        background-color: #fff;
        width: 400px;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.5);
        text-align: center;
        position: relative;
    }

    /* Error message styling */
    .dialog-box h1 {
        color: red;
        font-size: 1.5em;
        margin-bottom: 20px;
    }

    /* Button styling */
    .dialog-box button {
        background-color: #4f78e0;
        color: white;
        font-size: 1em;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .dialog-box button:hover {
        background-color: #3b5fb8;
    }

</style>
</head>
<body>
    <!-- Dialog box container -->
    <div class="overlay">
        <div class="dialog-box">
            <h1>Wrong credentials!! Please try again.</h1>
            <!-- Retry button; in practice, this could redirect or refresh the login page -->
            <button onclick="window.location.href='loginPage.jsp'">Retry</button>
        </div>
    </div>
</body>
</html>
