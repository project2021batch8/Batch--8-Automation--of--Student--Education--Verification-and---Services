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

String o = (String)request.getAttribute("success");
if(o != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o+"</font>");
	
}

int count1 =0;
HttpSession sessions=request.getSession();  

String stuid = (String)sessions.getAttribute("stuid");
String regno = (String)sessions.getAttribute("regno");
String dob = (String)sessions.getAttribute("dob");
String emails = (String)sessions.getAttribute("emails");
String passwords = (String)sessions.getAttribute("passwords");
String course = (String)sessions.getAttribute("course");
String category = (String)sessions.getAttribute("category");
String jyear = (String)sessions.getAttribute("jyear");
String eyear = (String)sessions.getAttribute("eyear");
String gender = (String)sessions.getAttribute("gender");

  System.out.println(stuid+"-----");
  
  
 int s1 =0 ;
  String reg = "";
  try{
		Connection conssss= ConnectionProvider.getCon();  
		Statement statement=conssss.createStatement();
		String sql ="select * from approvedboncertificate where regno ="+regno+"";
		ResultSet resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
			
			s1 = resultSet.getInt(9);
			reg = resultSet.getString(5);
			
			 HttpSession session1=request.getSession();  
			    
		     sessions.setAttribute("regno",reg);
			
			%>

	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
    
	
		
	%>
	
	<%
	

	ArrayList<Integer> lofcounts = new ArrayList<Integer>();
	int s2 = 0;
	  try{
			Connection conssss= ConnectionProvider.getCon();  
			Statement statement=conssss.createStatement();
			String sql ="select * from approvedlofcertificate where regno ="+regno+"";
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
				
				
				s2 = resultSet.getInt(16);
				 HttpSession session1=request.getSession();  
			    
			     sessions.setAttribute("regno",regno);
				 lofcounts.add(s2);
				
				%>

		<%
		}

		} catch (Exception e) {
		e.printStackTrace();
		}
	    

		
		int sum = 0 ;
		
		for(Integer x : lofcounts)
			{
			sum +=x;
			}
		int bc1 = sum;
		
		System.out.println("bc---------"+sum);
		
	
	
	
	
	
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
        location.href = "CheckingBon";
        
        
        
        document.getElementById("myButton1").onclick = function () {
        location.href = "viewlofcerti.jsp";
    };
</script>


<style>

.mybutton
{
  background-color: #4CAF50; 

}



</style>
</head>

<body id="wrapper">

    <section id="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 top-header-links">
                  
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
               
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
                        
                        <%
                        String sess = "Logged Out Success !!";
                        %>
             <!--  <li><a href="stuhome.jsp?sess=<%=sess%>">Log Out</a></li>-->
                      
                  
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
 
  <input type = "hidden" name="reg" value="<%=regno %>"/>


  
  <h2>Messages </h2>
  <br/>
1.
     <button onclick="location.href = 'CheckingBon';" style= "background-color:#159eee; color:white;    height: 100px; width:280px;  " id="myButton"  >BONAFIDE CERTIFICATE [<%=s1%>]</button>
     				<td>
										<label id="friendslab" style="font-size: 18px;">
											
										</label>
										<br/>
										<br/>
										2.
										<label style="color: red; font-size: 15px;">
										 <button onclick="location.href = 'viewlofcerti.jsp';" style= "background-color:#159eee;   color:white;   height: 100px; width:280px;  " id="myButton1"  > LOR[<%=bc1 %>]</button>
											
										</label>
									</td>
     
     

     
     
     
     
     
     
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
