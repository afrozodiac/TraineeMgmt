<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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
button{
  margin:auto;
  display:block;
}

</style>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<form action="update.obj">
<table border="2" align="center">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Domain</th>
		<th>Location</th>
	</tr>
    <c:forEach var="tr" items="${tlist}">
        <tr>
            <td><input type="text" name="id" value="${tr.id}"></td>
            <td><input type="text" name="name" value="${tr.name}"></td>
            <td><input type="text" name="domain" value="${tr.domain}"></td>
            <td><input type="text" name="location" value="${tr.location}"></td>
        </tr>
        <tr>
        	<td><a href="index.obj">Home</a></td>
        	<td><input type="submit" value="Update!"></td>
        	<td><a href="delete.obj?id=${tr.id}">Delete</a></td>
        	<td><a href="newTrainee.obj">Add New</a></td>
        </tr>

    </c:forEach>        
</table>
</form>
</body>
</html>