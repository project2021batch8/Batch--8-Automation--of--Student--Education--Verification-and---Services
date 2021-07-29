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
   <%@page import ="com.dao.ReadProper" %>
   <%@page import="java.util.Date"%>
   <%@page import="java.text.DateFormat"%>
    <%@page import="java.text.SimpleDateFormat"%>
     <%@page import="java.util.Calendar"%>
 <%
 
 String randomValue = "";
HttpSession sessiona=request.getSession();  

String staffid = request.getParameter("staffid");
String uniq_id = request.getParameter("unique_id");
System.out.println("staffid-----"+staffid);
System.out.println("------unique id-----"+uniq_id);

String stuname ="";
String staffname = "";
String department ="";
String keywords = "";
String address = "";
String uimage = "";
String place = "";
String pincode ="";
String regno = "";
String stuid= "";
int uniqueid =0;

try{
	Connection conssss= ConnectionProvider.getCon();  
	Statement statement=conssss.createStatement();
	String sql ="select * from lofrequest_copy where unique_id ='"+uniq_id+"' ";
	ResultSet resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
		
	staffname = resultSet.getString(2);
	department = resultSet.getString(3);
	keywords = resultSet.getString(5);
	
	stuname = resultSet.getString(8);
	address = resultSet.getString(9);
 uimage = resultSet.getString(11);
 place = resultSet.getString(12);
 pincode = resultSet.getString(13);
 regno = resultSet.getString(14);
	stuid = resultSet.getString(7);
	uniqueid = resultSet.getInt(15);
	System.out.println("unique id ----------"+uniqueid);
		%>
	





<%
}

} catch (Exception e) {
e.printStackTrace();
}







ReadProper property=new ReadProper();
String u = property.getURLDetailss();
System.out.println("url-----"+u);


String c = u+uimage;
System.out.println("image+url-------"+c);

DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
Date dateobj = new Date();
System.out.println(df.format(dateobj));
String d = df.format(dateobj);

%>
 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>  
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.6/jspdf.plugin.autotable.min.js"></script> 
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

textarea {
  width: 100%;
  height: 100%; /* optional change it to your height */
  padding: 15px;
  background: transparent;
  color: black;
  vertical-align: middle; /* removes whitespace as textarea is inline element */
  border: 0;
  overflow:visible;
}
 input {
        background: transparent;

    }
    input[type="text"] {

       border:none; /* Get rid of the browser's styling */
     
        background: transparent;
        

    }
     input[type="date"] {

       border:none; /* Get rid of the browser's styling */
     
        background: transparent;
        

    }
#s {
  text-transform: capitalize;
}
#table {
 
  border-spacing: 35px;
}

</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
</script>
		<script type='text/javascript' src="jspdf.debug.js"></script> 
		<script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#profile-img-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#profile-img").change(function(){
        readURL(this);
    });
</script>
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
                        
                        <li><a href="#"><i class="fa fa-skype"></i></a></li>
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
                     
                         <li><a href="index.html">Log Out</a></li>
                  
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <!--/.nav-ends -->
    </header>

    

<div align ="center">
        <%

String o = (String)request.getAttribute("img");
 String o1 = (String)request.getAttribute("success");
if(o != null)
{
	
	out.println("<font color=#FA0505  size =4px>"+o+"</font>");
	
}
if(o1 != null)
{
	
	out.println("<font color=#FA0505  size =4px>"+o1+"</font>");
	
}

%>

</div>

    
<!-- start -->

  

   <form action="LofStore" method="post"
				 enctype="multipart/form-data">
			
			<input type="hidden" name="unique_id" value="<%=uniq_id %>"/>
				<center>
				<font size=10></font>
				<br/>
					<table cellpadding=5 cellspacing=0 border="0"  width="40%"
						height="10%" id="simpletable" >

							
						<tr bgcolor="#FFFFFF  "> 
					
							<td valign=top><div align="right">
									
										 
								<div align="center"><h1 style="color:#191970;">PANIMALAR ENGINEERING COLLEGE</h1><h4 style="color:#191970;"><input  name="image" type="image" src="img/seal.png" width="100" height="100" align="left">(A Christian Minority Institution)</h4><h3 style="color:red;">JAISAKTHI EDUCATIONAL TRUST</h3><h4 style="color:#191970;"> Approved by All India Council for Technical Education, New Delhi</h4><h4 style="color:#191970;">All UG Programmes are Permanantly Affliated to Anna University</h4><h4 style="color:#191970;">All UG Programmes are Accredited by National Board of Accreditation (NBA)</h4><h4 style="color:#191970;">Approved by UGC for 2(f) & 12(B) Status</h4><h4 style="color:red;">Bangalore Trunk Road, Varadharajapuram, Nasarethpet, Poonamallee, Chennai-600 123.</h4><h4 style="color:#191970;">Phone: +91-44-26490404, 26490505, 26490717. Fax No:91-44-26490101</h4><h4 style="color:red;">Email: info@panimalar.ac.in  Website: www.panimalar.ac.in</h4></div>	
									</div>
									
								<br />

  <h2 align ="center">Letter Of Recommendation</h2>
												<div align = "right">
												<b>Date</b><br/><br/>
<input type="text"  name="cdate" 
									 size="7" value="<%=d%>" align="right" readonly>
</div>
					<table> <tr><td>	
							<p style="font-size:130%; font family:"Times New Roman">	From<sup>
								<br>
								<br>
										<input type="text"  name="staffname" 	
							
								
						value="<%=staffname %>"	readonly	>		<br>
						<input type="text"  name="dep" 	
							
								
						value="Department of <%=department %>"	readonly	>
								<input type="text"  name="univer" 	
							</p><p align="left">Panimalar Engineering College </p>
								
						<!--value="Panimalar Engineering College" readonly>-->	
								<input type="text"  name="p" 	
							
								
						value="Chennai-600045"	readonly	>			
									</sup> 
								<br>
								</p>
								
									<br>
							
								
								
									
					
					<br>
								<b>Respected Mr/Ms  </b>	<br/></td></tr></table>
									</div>
						<textarea id="w3review" name="w3review" rows="5" cols="20" style="overflow:visible" text-align="center" readonly>
<%=keywords %> 

</textarea>
								
							
								
							
	
					
					
								
							
														
     
     
<!-- <input  name="images"  align ="left" type="image" src="<%=c %>" width="80" height="80">-->	
    
  						
									
													    
    <div align="left">
							
									    <input type="hidden" name="stuid"  value="<%=stuid %>">
    <input type="hidden" name="regno" value="<%=regno %>">
    <input type="hidden" name="staffid"  value="<%=staffid %>">
    <input type="hidden" name="im" value="<%=uimage %>">					
								
										 
									</div>
       <p> <input  name="image" type="image" src="img/s33.PNG" width="200" height="200" align="left"></p>
							
     <p align ="right" >Staff Signature</p>
 <input  name="image"  align ="right"  id="profile-img-tag" type="image" src="" width="100" height="100">	
    
    
    
   			</td></tr></table>							 
    
    
<br>
<br>
  <br>  
 <br>  
					
			
 <input type='file'   name="file" onchange="readURL(this);"  />

    
    
    
    
				<input type="submit" value="Submit" style="background-color:#159eee   ;color:white;width:100px;height:30px;"/>		
				</form>
		


  




</body>

</html>
