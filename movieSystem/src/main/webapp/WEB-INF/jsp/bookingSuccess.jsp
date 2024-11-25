<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="2">
                <tr>
                    <th>Show Time Name</th>
                    <th>Royal Seat Number</th>
                    <th>Premier Seat Number</th>
                    <th>Royal Seats Available</th>
                    <th>Premier Seats Available</th>
                    <th>Seat Type</th>
                    <th>Seats to Book</th>
                    <th>Select</th>
                </tr>
                <c:forEach items="${movieShowList}" var="movieShow">
                    <tr>
                        <td>${movieShow.showTimeName}</td>
                        <td>${movieShow.royalSeatNumber}</td>
                        <td>${movieShow.premierSeatNumber}</td>
                        <td>${movieShow.royalSeatNumber - movieShow.royalBooked}</td>
                        <td>${movieShow.premierSeatNumber - movieShow.premierBooked}</td>
                        <td>
                            <select name="seatType_${movieShow.showTimeName}">
                                <option value="Royal">Royal</option>
                                <option value="Premier">Premier</option>
                            </select>
                        </td>
                        <td>
                            <input type="number" name="numberOfSeats_${dto.showTimeName}" min="1" />
                        </td>
                        <td>
                            <input type="radio" name="selectedShowTime" value="${dto.showTimeName}" />
                        </td>
                    </tr>
                </c:forEach>
            </table> MovieBookPage

</body>
</html>