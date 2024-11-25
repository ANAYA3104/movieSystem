<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1><u>Movie Details</u></h1>
<h2>
<form action="/bookSeats" method="post">
<table>

<tr>
<td> The Movie Id:</td><td>${movie.movieId}</td>
</tr>

<tr>
<td> Movie Name:</td><td>${movie.movieName}</td>
</tr>

<tr>
<td> Movie Language:</td><td>${movie.language}</td>
</tr>

<tr>
<td> Movie Genere:</td><td>${movie.genere}</td>
</tr>

<tr>
<td> Movie duration:</td><td>${movie.duration}</td>
</tr>

<tr>
<td> Movie Rating:</td><td>${movie.ratings}</td>
</tr>
</table>
</form>
</h2>


</div>

<br/>
<div align="center">
<h2><u>Show Time Name</u></h2>
<h3>
<table border="2">
<tr>
<th>Show Time Name</th>

<th>Royal Seat Number</th>
<th>Premier Seat Number</th>
<th>Royal Seat Available</th>
<th>Premier Seat Available</th>
<th>Select</th>
</tr>

<c:forEach items="${movieShowList}" var="movieShow">
<tr>
<td>${movieShow.showTimeName}</td>
<td>${movieShow.royalSeatNumber}</td>
<td>${movieShow.premierSeatNumber}</td>

<c:set var="availableSeats" scope="session" value="${movieShow.royalSeatNumber-movieShow.royalBooked}"/>
<td>${availableSeats}</td>

<c:set var="availableSeats" scope="session" value="${movieShow.premierSeatNumber-movieShow.premierBooked}"/>
<td>${availableSeats}</td>

<td><input type="radio" name="selection" value="${movieShow.showTimeName}"/>
</tr>
</c:forEach>
</table>
<button type="Submit">Submit</button>
<button type="reset">Reset</button>
</form>
</h3>

</div>

</body>
</html>