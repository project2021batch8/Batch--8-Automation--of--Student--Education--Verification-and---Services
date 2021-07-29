<%@ page import="java.sql.*" %>

<%
String url="jdbc:mysql://localhost:3306/autosystem2";
Class.forName("com.mysql.jdbc.Driver");
Connection Con=DriverManager.getConnection(url,"root","");
Statement stmt=Con.createStatement();
%>