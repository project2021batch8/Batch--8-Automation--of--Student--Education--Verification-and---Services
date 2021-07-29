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
<%

String sess = "Logged Out SuccessFully!";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="scss/main.css">
    <link rel="stylesheet" href="scss/skin.css">
    <link rel="stylesheet" href="scss/main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
   
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  text-align:left;
	
}
th, td {
  padding: 15px;
  text-align: left;

}
#t01 {
  width: 100%;    
  background-color:#0000FF;
}
</style>

</head>

<body id="wrapper">

    <section id="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 top-header-links">
                    <ul class="contact_links">
                       
                    </ul>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <ul class="social_links">
                      
                    </ul>
                </div>
            </div>
        </div>
        </div>

    </section>

    <header>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  			    <input  name="image" type="image" src="img/seal.png" width="100" height="100">
                    <a class="navbar-brand" href="#">
                       
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                       
                  <!--    <li><a href="adminhome.jsp">Admin Home</a></li>-->
                        <li><a href="adminhome.jsp">Back</a></li>
                  <!--   <li><a href="admin.jsp?sess=<%=sess%>">Log Out</a></li>-->
                  
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <!--/.nav-ends -->
    </header>

    <section id="top_banner">
        <div class="banner">
            <div class="inner text-center">
                <h2>STAFF LIST</h2>
            </div>
        </div>
    </section>

<div align = "center" style="font-family:verdana"">
 <%

String o = (String)request.getAttribute("fail");
if(o != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o+"</font>");
	
}

%>
</div>

  
  <div align = "center">

                <BR/>
<table id="t">
<tr style="background-color:grey;color:white;">
								
								<th>
									NAME
								</th>
							
								<th>
								    EMAIL
								</th>
								<th>
									DESIGNATION
								</th>
								<th>
									DEPARTMENT
								</th>
								<th>
									STATUS
								</th>
							</tr>
<%

String s1 = "";
String s5 = "";

try{
	Connection conssss= ConnectionProvider.getCon();  
	Statement statement=conssss.createStatement();
	String sql ="select * from staff  ";
	ResultSet resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
		
		s1 = resultSet.getString(1);
		s5 = resultSet.getString(10);
		
		
		System.out.println("staffid ----"+s1+"---------"+s5);
		%>
		<tr>

<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(6) %></td>

<td><%=resultSet.getString(8) %></td>
<td><%=resultSet.getString(9) %></td>


<%
if(s5.equalsIgnoreCase("waiting"))
		{
%>
<td>
<a href="ActivateStaff.jsp?staffid=<%=s1%>">Waiting</a>
</td>

<%
		}
else
{
	
	%>
<td><%=s5 %></td>
<% 
}

%>





</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
   </div>
    
<!-- End -->
     
  

<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
  




</body>

</html>
