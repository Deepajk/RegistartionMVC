<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/customers"; 

String username = "root";
String password = "root123";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<h2 align="center"><font><strong>Admin Report</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">

<td><b>firstName</b></td>
<td><b>lastName</b></td>
<td><b>addressOne</b></td>
<td><b>addressTwo</b></td>
<td><b>city</b></td>
<td><b>state</b></td>
<td><b>country</b></td>
<td><b>zipCode</b></td>
<td><b>Date</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM users ORDER BY Date desc";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">


<td><%=resultSet.getString("firstName") %></td>
<td><%=resultSet.getString("lastName") %></td>
<td><%=resultSet.getString("addressOne") %></td>
<td><%=resultSet.getString("addressTwo") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getString("country") %></td>
<td><%=resultSet.getString("zipCode") %></td>
<td><%=resultSet.getString("Date") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</html>
