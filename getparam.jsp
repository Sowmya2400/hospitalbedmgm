<%@page import="java.util.List"%>
<%@page import="com.method.Method"%>
<%@page import="com.model.Model"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success page</title>
</head>
<body>

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
PreparedStatement statement = null;
ResultSet resultSet = null;
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
 
String name=request.getParameter("name");
String area=request.getParameter("area");
int nob=Integer.parseInt(request.getParameter("nob"));
String specialist=request.getParameter("specialist");
int nod=Integer.parseInt(request.getParameter("nod"));

statement=connection.prepareStatement("insert into hospital values(?,?,?,?,?)");
statement.setString(1, name);
statement.setString(2, area);
statement.setInt(3, nob);
statement.setString(4,specialist);
statement.setInt(5, nod);
statement.executeUpdate();
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<h1><%=request.getParameter("name")%> hospital is successfully updated in the database</h1>
</body>
</html>