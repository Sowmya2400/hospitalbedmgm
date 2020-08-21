<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Details</title>
</head>
<body>
<%String value=request.getParameter("location");%>

<% 
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "sowmya";
String userId = "root";
String password = "Sowmi24@13";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Hospital Details</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Hospital Name</b></td>
<td><b>Hospital Area</b></td>
<td><b>no.of bed</b></td>
<td><b>Specialist</b></td>
<td><b>no.of doctors</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM hospital";

resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
	
%>
		<tr bgcolor="#DEB887">

		<td><%=resultSet.getString("name") %></td>
		<td><%=resultSet.getString("area") %></td>
		<td><%=resultSet.getString("nob") %></td>
		<td><%=resultSet.getString("specialist") %></td>
		<td><%=resultSet.getString("nod") %></td>
		</tr>

<% 
	
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>