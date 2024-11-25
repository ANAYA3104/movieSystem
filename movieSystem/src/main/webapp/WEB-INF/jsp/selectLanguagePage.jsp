<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Select Language</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('https://media.istockphoto.com/id/1208878247/vector/film-strip-frame-in-wave-form-with-popcorn-box-modern-cinema-background-film-template-with.jpg?s=612x612&w=0&k=20&c=KxfXghj9n19CNqFa3mVDBbyDlfO7Woo39M2dGXFki7U=') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
        }
        h2 {
            margin-bottom: 20px;
            font-size: 18px;
            color: #333;
        }
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Select Language</h2>
        <form action="/movieReportLanguage" method="post">
            <label for="languages">Choose a Language:</label>
            <select id="languages" name="languages">
                <c:forEach var="language" items="${languageSet}">
                    <option value="${language}">${language}</option>
                </c:forEach>
            </select>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
