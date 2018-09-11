<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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
</style>
<body>
<table border="3" align="center">
<tr><th>
<h1>Trainee Management System</h1>
</th></tr>
</table><br><br>
<table border="4"  align="center">
	<tr>
		<th colspan="2">
			Select a operation
		</th>
	</tr>
	<tr>
		<td>Add Trainee</td>
		<td><a href="newTrainee.obj">GO!</a></td>
	</tr>
	<tr>
		<td>Search a Trainee</td>
		<td><a href="search.obj">GO!</a></td>
	</tr>
		<tr>
		<td>Retrieve all Trainee</td>
		<td><a href="list.obj">GO!</a></td>
	</tr>
</table>

</body>
</html>