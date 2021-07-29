<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.io.FileInputStream"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'retrieve.jsp' starting page</title>
    
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
   
   try{
   String filename="Login.pdf";
		System.out.println("filename------------>>>>"+filename);

		String file_enc ="E:\\";
		

		response.setContentType("APPLICATION/OCTET-STREAM");

		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+".pdf" + "\"");

		FileInputStream fileInputStream = new FileInputStream(file_enc+filename);
		System.out.println("fileInputStream------"+fileInputStream);

		int i;
		while ((i = fileInputStream.read()) != -1) {
			out.write(i);
		}
		fileInputStream.close();
		

	
   }
   catch(Exception e)
   {
   e.printStackTrace();
   }

   
   
   
   
   
    %>
  </body>
</html>
