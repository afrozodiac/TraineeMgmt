<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add</title>
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
<th><h1>Add Trainee</h1></th>
</tr>
</table>
<br>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"  %>
<f:form action="add.obj" modelAttribute="tdetails">
<table align="center" border="3">
	<tr>
		<th colspan="2">**Enter Details Of New Trainee**</th>
	</tr>
	<tr>
		<td>ID</td>
		<td><f:input path="id"/></td>
	</tr>
	<tr>
		<td>Name</td>
		<td><f:input path="name"/></td>
	</tr>
	<tr>
		<td>Domain</td>
		<td>
		<f:select path="domain">
			<f:option value="JEE" label="JEE"/>
			<f:option value="JEE_Cloud" label="JEE Cloud"/>
			<f:option value="BI_v2" label="BI V2"/>
			<f:option value="BI_v4" label="BI V4"/>
			<f:option value="System" label="System"/>
			<f:option value="Testing" label="Testing"/>
			<f:option value="Python" label="Python"/>
			<f:option value="C/C++" label="C/C++"/>
		</f:select>
		</td>
	</tr>
	<tr>
		<td>Location</td>
		<td><f:radiobutton path="location" value="Pune"/> Pune<br>
			<f:radiobutton path="location" value="Mumbai"/> Mumbain<br>
			<f:radiobutton path="location" value="Bangalore"/>Bangalore<br>
			<f:radiobutton path="location" value="Chennai"/>Chennai<br>
		</td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Submit!"></td>
	</tr>
</table>
</f:form>
</body>
</html>