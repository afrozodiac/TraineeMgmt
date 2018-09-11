<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
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
<table align="center" border="2">
<tr>
<th><h1>Search Trainee</h1></th>
</tr>
</table><br><br>
<form action="searchId.obj">
<table align="center" border="4">
	<tr>
		<th colspan="2">Enter the Trainee ID</th>
	</tr>
	<tr>
		<td><input type="text" name="id"></td>
		<td><input type="submit" value="Search"></td>
	</tr>
</table>
</form>
</body>
</html>