<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%@ page import = "com.service.Provider" %>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <%@page import="com.dao.ConnectionProvider"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<%
   
   
   System.out.println("Stu activate");
   
		try {
			   
			Connection con= ConnectionProvider.getCon();  
			Statement st=con.createStatement();
			String stuid=request.getParameter("stuid");
			String str = "Authorized";
       		
       		String query1 ="update student set status='"+str+"' where stuid="+stuid+" ";
	   		st.executeUpdate (query1);
		
			response.sendRedirect("viewstudent.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
		e.printStackTrace();
   		}
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    %>
  </body>
</html>
