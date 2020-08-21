<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Login</title>
</head>
<body>
<form name="testForm" action="getparam.jsp"> 
<table>
<tr>
<td><h3>Name of the hospital: </h3><input type="text" name="name"> </td>
</tr>
<tr>
<td><h3>Area of the hospital: </h3><input type="text" name="area"> </td>
</tr>
<tr>
<td><h3>No of beds avaliable in the hospital: </h3><input type="text" name="nob"> </td>
</tr>
<tr>
<td><h3>Specialist: </h3><select name="specialist" size="1">
<option value="cardiologist">Cardiologist</option>
<option value="neurologist">Neurologist</option>
<option value="gynaecologist">Gynaecologist</option>
<option value="urologist">urologist</option>
</select></td>
</tr>
<tr>
<td><h3>No. of doctors avaliable in the hospital: </h3><input type="text" name="nod"></td>
</tr>
</table>
<tr>
<td><input type="submit"></td>
</tr>
</form>
</body>
</html>