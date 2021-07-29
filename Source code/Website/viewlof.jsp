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


int count1 =0;
HttpSession sessions=request.getSession();  



String staffid = request.getParameter("staffid");
  
System.out.println("staffid==========="+staffid);
  
  int s1 = 0;
  String staffsid = "";
  String name ="";
  String dep = "";
  String email = "";
  
  try{
		Connection conssss= ConnectionProvider.getCon();  
		Statement statement=conssss.createStatement();
		String sql ="select * from staff where staffid = "+staffid+"";
		ResultSet resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
			
			
			staffsid = resultSet.getString(1);
			name = resultSet.getString(2);
			dep = resultSet.getString(9);
			email =resultSet.getString(6);
			 HttpSession session1=request.getSession();  
		    session1.setAttribute("staffid",staffsid);
		    
		    
			 System.out.println("----"+staffsid+"-----"+name+"---"+dep+"-"+email);
			
			%>

	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
    

	

		
	%>
	
	<%
	 HttpSession sessions1=request.getSession(); 
	 String stuid = (String)sessions.getAttribute("stuid");
	 String regno = (String)sessions.getAttribute("regno");
	 String stuname = (String)sessions.getAttribute("name");
	 
	 String address = (String)sessions.getAttribute("address");
	 String pincode =(String)sessions.getAttribute("pincode");
	 String location = (String)sessions.getAttribute("location");
	 
	 
	 System.out.println(""+stuid+""+regno+""+stuname+""+pincode+""+location);
	
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
    <script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "bor.jsp";
        
        
        
        document.getElementById("myButton1").onclick = function () {
        location.href = "viewlof.jsp";
    };
</script>


<style>

.mybutton
{
  background-color: #4CAF50; 

}
</style>
<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
</script>
		<script type='text/javascript' src="jspdf.debug.js">
</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>  
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.6/jspdf.plugin.autotable.min.js"></script>  

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
                       
                    </ul>
                </div>
            </div>
        </div>
        </div>

    </section>

<%

String l = "1";
%>
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
                        <li><a href="viewstaff.jsp">Back</a></li>
                   
                         
                  
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
  String o = (String)request.getAttribute("success");
  if(o != null)
  {
  	
  	out.println("<font color=#159eee  size =4px>"+o+"</font>");
  	
  }
System.out.println("---"+staffid);
  
  %>

  <h2>Letter of Request</h2>
  <br/>
 <form action = "LofRequest" method="post"
				 enctype="multipart/form-data">

<input type = "hidden" name="staffid" value="<%=staffid%>"/>
<input type = "hidden" name="name" value="<%=name %>"/>
<input type = "hidden" name="dep" value="<%=dep%>"/>
<input type = "hidden" name="email" value="<%=email%>"/>
<input type="hidden" name="stuid" value="<%=stuid%>"/>

<input type="hidden" name="stuname" value="<%=stuname%>"/>



<input type="hidden" name="address" value="<%=address%>"/>

<input type="hidden" name="locations" value="<%=location%>"/>


<p>WRITE YOUR MESSAGE</p>


<textarea    id="w3review"  name="content" rows="9" cols="80" style="overflow:hidden"></textarea>


 
 						
     <p align ="center" >Your Signature</p>
<img align="center" src="" id="profile-img-tag" width="100" height="100" />
<br/>
<br/>

      <input type='file'   name="file" onchange="readURL(this);"  />
    <div>
 </div> 
 
 <br/>
 <input type= "submit" name="submit"/>
 </form>
     
</div>
<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
  


    

        
        <a class="open" href="#"><span><i class="fa fa-gear fa-spin"></i></span></a>
    </div>

</body>

</html>
