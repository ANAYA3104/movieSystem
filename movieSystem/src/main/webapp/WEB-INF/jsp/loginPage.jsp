<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        background-image: url("https://img.freepik.com/free-vector/buying-cinema-tickets-online-isometric-composition-with-holding-smartphone-hand-popcorn-movie-film-bobbins_1284-55352.jpg"); /* Add your high-resolution image path here */
        background-size: cover; /* You can try 'contain' or specific pixel dimensions if needed */
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed; /* Keeps the image sharp by fixing it in place */
        padding: 0;
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
    }
    .loginBox {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        color: white;
        width: 450px;
        background-color: rgba(3, 2, 2, 0.8); /* Semi-transparent box */
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(3, 2, 2, 0.8);
        padding: 40px;
        margin: 100px auto;
    }
    .loginBox input {
        padding: 13px;
        border-radius: 5px;
        border: none;
        width: 100%;
        margin-top: 15px;
        margin-bottom: 15px;
    }
    .loginBox input[type="submit"] {
        background-color: #4f78e0;
        color: white;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .loginBox input[type="submit"]:hover {
        background-color: #4f78e0;
    }
    .loginBox label {
        font-weight: bold;
    }
    .registerLink {
        color: #333;
        margin-top: 10px;
        font-size: 0.9em;
    }
    .registerLink a {
        text-decoration: none;
        color: #17a2b8;
        transition: color 0.3s;
    }
    .registerLink a:hover {
        color: #0e6e7e;
    }
</style>
</head>
<body>
    <div class="loginBox">
        <h2>LOGIN</h2>
        <form action="/login" method="post">
            <label for="Username">Enter Username:</label>
            <input type="text" name="username" id="Username" placeholder="Enter Username" required />
            <label for="Password">Enter Password:</label>
            <input type="password" name="password" id="Password" placeholder="Enter Password" required />
            <input type="submit" value="Submit" />
        </form>
        <div class="registerLink">
            <a href="/register">Register for new User</a>
        </div>
    </div>
</body>
</html>
