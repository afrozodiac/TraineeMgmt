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
<table border="4" align="center">
<tr>
	<th><h1>Authentication</h1></th>
</tr>
</table><br><br>
<form action="loginAuth.obj">
<table border="2" align="center">
	<tr>
		<td>Username : </td>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<td>Password : </td>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Login"></td>
	</tr>
</table>
</form>
</body>
</html>