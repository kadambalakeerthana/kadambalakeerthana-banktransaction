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
Statement statement1 = null;
Statement statement2 = null;
ResultSet resultSet1 = null;
ResultSet resultSet2 = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>demo fund transfer</title>
</head>
<body>
<%
try{
connection = DriverManager.getConnection(connectionUrl+dataBase,userid,password);
statement1=connection.createStatement();
String sql ="insert into priyanka.lasttransaction(accountnum,debitamount) values(67767,1000)";
statement1.executeUpdate(sql);
out.println("amount debited Rs-1000");
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>