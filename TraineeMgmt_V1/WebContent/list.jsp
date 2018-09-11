<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listing Trainee</title>

<style>
th {
    background-color: #4CAF50;
    color: white;
}
tr:nth-child(even) {background-color: #f2f2f2;}
h1{
    display: block;
    font-weight: bold;
    text-align: center;
}
</style>
</head>

<body>
<table border="1" align="center">
<tr>
<th><h1>***Listing All Trainees***</h1></th>
</tr>
</table><br><br>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<table border="2" align="center">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Domain</th>
		<th>Location</th>
	</tr>
    <c:forEach var="tr" items="${tlist}">
        <tr>
            <td>${tr.id}</td>
            <td>${tr.name}</td>
            <td>${tr.domain}</td>
            <td>${tr.location}</td>
        </tr>
    </c:forEach>        
</table>
</body>
</html>
