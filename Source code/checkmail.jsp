<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import = "ReadMail.ReadMail" %>
<%@ page import = "ReadMail.readinbox" %>
<%@page contentType="text/html"%>
<%@ page language = "java" import = "static java.lang.System.out" %>
<%@ page language = "java" import = "java.io.BufferedInputStream,
                                    java.io.InputStream,
                                    java.util.*,
                                    javax.mail.*,
                                    javax.mail.search.FlagTerm" %>
                 
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Mail Test</title>
    </head>
     
    <body>
        <h1 align="center">Send Mail </h1>
         
        <% 
		String msg="";
		try
		{
		String btn=request.getParameter("btn");
			if(btn.equals("Submit"))
			{
			String name=request.getParameter("name");
			String college=request.getParameter("college");
			String regno=request.getParameter("regno");
			String cgpa=request.getParameter("cgpa");
			String year=request.getParameter("year");
			String quali=request.getParameter("quali");
			
			
          String email="rndittrichy@gmail.com";
		  String mess="";
		  
		  mess="<table>";
		  mess+="<tr><td>Name</td><td>: "+name+"</td></tr>";
		  mess+="<tr><td>College</td><td>: "+college+"</td></tr>";
		  mess+="<tr><td>Register No.</td><td>: "+regno+"</td></tr>";
		  mess+="<tr><td>CGPA</td><td>: "+cgpa+"</td></tr>";
		  mess+="<tr>Year of Passing<td>Name</td><td>: "+year+"</td></tr>";
		  mess+="</table>";
		  
		  
		  
		  
          new javapack.Mail().SendMail(email, "Verification Status", mess,"UTF-8");
         
		  msg="sent";
		  
		  
		  //ReadMail rm = new ReadMail(); 
		  //out.print(rm.ReadMail2());
		  //readinbox rm = new readinbox(); 
     // out.print("test");
	 		}
			
      }
	  catch(Exception e)
	  {
	  }
      %>    
	
        <form name="form1" method="post" action="">
          <table width="425" border="0" align="center">
            <tr>
              <td>Candidate Name </td>
              <td><input type="text" name="name"></td>
            </tr>
            <tr>
              <td>College</td>
              <td><input type="text" name="college"></td>
            </tr>
            <tr>
              <td>Registration Number </td>
              <td><input type="text" name="regno"></td>
            </tr>
            <tr>
              <td>CGPA Obtained </td>
              <td><input type="text" name="cgpa"></td>
            </tr>
            <tr>
              <td>Year of Passing </td>
              <td><input type="text" name="year"></td>
            </tr>
            <tr>
              <td>Qualification</td>
              <td><input type="text" name="quali"></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="btn" value="Submit"></td>
            </tr>
          </table>
          <p><%
		  if(msg!="")
		  {
		  out.print("Mail Sent Succesfully");
		  }
		  %></p>
        </form>
</body>
</html>
