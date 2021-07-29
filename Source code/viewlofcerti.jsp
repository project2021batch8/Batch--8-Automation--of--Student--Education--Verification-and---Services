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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="scss/main.css">
    <link rel="stylesheet" href="scss/skin.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
   
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 {
  width: 100%;    
  background-color: #f1f1c1;
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
                   <!--      <%
                        String sess = "Logged Out Succes !!";
                        %>
                      <li><a href="stuhome.jsp?sess=<%=sess%>">Log Out</a></li>-->
                         <li><a href="index.html">Log Out</a></li>
                  
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
                <h2>STUDENT HOME</h2>
            </div>
        </div>
    </section>

<div align = "center" style="font-family:verdana"">
 <%
 HttpSession sessions=request.getSession(); 

String email = (String)sessions.getAttribute("email");
 System.out.println("-----------email"+email);
String o = (String)request.getAttribute("success");
if(o != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o+"</font>");
	
}
String o1 = (String)request.getAttribute("clear");
if(o1 != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o1+"</font>");
	
}
String o2 = (String)request.getAttribute("aclear");
if(o2 != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o2+"</font>");
	
}

%>
</div>

  
  <div align = "center">

                 <h1> Message List</h1>
<table border = "1">
<tr>
							
								<th>
									REGNO
								</th>
								
								
									
									<th>
									STAFF NAME
								</th>
									
									<th>
									DEPARTMENT 
								</th>
								<th>
									STATUS
								</th>
								
							</tr>
<%
HttpSession sessiona=request.getSession();  

String regno1 = (String)sessions.getAttribute("regno");

System.out.println("regno------------"+regno1);


String stuid ="";
String regnos = "";
String stuname ="";

String content = "";
String ui = "";
String staffname = "";
String dep ="";

try{
	Connection conssss= ConnectionProvider.getCon();  
	Statement statement=conssss.createStatement();
	String sql ="select * from approvedlofcertificate_copy where regno = '"+regno1+"' ";
	ResultSet resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
		
	stuid = resultSet.getString(12);
regnos= resultSet.getString(13);
stuname = resultSet.getString(2);
content = resultSet.getString(11);
ui = resultSet.getString(18);
staffname = resultSet.getString(6);
dep = resultSet.getString(7);

	System.out.println("content-----"+content);
	HttpSession sessiona1S=request.getSession();  

	sessions.setAttribute("content",content);
		%>
		<tr>
	

<td><%=resultSet.getString(13) %></td>

 


<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>




<td>
<a href="lofstuview.jsp?unique_id=<%=ui%>">View</a> ||
<a href="ClearMessage?unique_id=<%=ui%>" >Clear</a>
</td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}

String a = "allclear";
try{
	
	
	Connection con21= ConnectionProvider.getCon();  
	Statement st11=con21.createStatement();

		System.out.println("Deleting");
System.out.println("regno"+regnos);
	 String sq11 = "delete from approvedlofcertificate where regno='"+regnos+"'";
	st11.executeUpdate(sq11);
	System.out.println("deleting notifcation approvedlof certificate");





}
catch(Exception e)
{
e.printStackTrace();
}

%>
</table>
   </div>
    
<!-- End -->

    
  	<input type="hidden" name = "content" value="<%=content %>"/>
  	<div align ="center">
<br/>
<form action="ClearMessage" method="post">
<input type="hidden" name = "aclear" value="<%=regnos%>"/>
<input type="submit" value="Clear All" style="background-color:#159eee   ;color:white;width:100px;height:30px;">
</form>

</div>

<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
  




</body>

</html>
