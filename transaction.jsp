<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("tid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dataBase="priyanka";
String userid = "root";
String password = "priyanka";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
Statement statement1=null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Last five Transactions</title>
</head>
<body>
<table border="1">
<tr>
<td>transid</td>
<td>accountnum</td>
<td>debitamount</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+dataBase,userid,password);
statement=connection.createStatement();
String sql ="select * from priyanka.lasttransaction ORDER BY transid DESC LIMIT 5";
resultSet = statement.executeQuery(sql);
statement1=connection.createStatement();
String sql1 ="update priyanka.bankacc set debitamount=(debitamount-1000)";
statement1.executeUpdate(sql1);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("transid") %></td>
<td><%=resultSet.getInt("accountnum") %></td>
<td><%=resultSet.getDouble("debitamount") %></td>
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