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

String staffid = (String)sessions.getAttribute("staffid");
String email = (String)sessions.getAttribute("emails");
String stuname = (String)sessions.getAttribute("name");

  System.out.println(staffid+"-----"+"-------"+email);
  
  
  ArrayList<Integer> noti = new ArrayList<Integer>();
  ArrayList<Integer> uniq = new ArrayList<Integer>();
  
  
  int s1 = 0;
  int uniq_no = 0;
  try{
		Connection conssss= ConnectionProvider.getCon();  
		Statement statement=conssss.createStatement();
		String sql ="select * from lofrequest where email ='"+email+"'";
		ResultSet resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
			
			
			s1 = resultSet.getInt(4);
			uniq_no = resultSet.getInt(15);
			 HttpSession session1=request.getSession();  
		    noti.add(s1);
		     session.setAttribute("email",email);
			uniq.add(uniq_no);
			
			%>

	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
    
	//SELECT SUM(total_cost)             
	//FROM purchase;
	System.out.println("noti----s1-----"+s1);
	System.out.println("noti----arrayli-----"+noti);
	
	int sum = 0;
	for(Integer bc : noti)
		{
	   sum += bc;
		}
	
	System.out.println("uniq no ----"+uniq);
	System.out.println("sum-------------"+sum);
	int bc = s1;
	
System.out.println("bc---------"+bc);


//adding arraylist in database
try{
	int status = 0;
	Connection con= ConnectionProvider.getCon(); 
	String tb1 = "insert into listvalue values (?)";
	  PreparedStatement ps1=con.prepareStatement(tb1);		  
    for(Integer x : uniq)
    	{
    	 ps1.setInt(1, x);
    ps1.addBatch();
    	}
   
  
     ps1.executeBatch();
          
     System.out.println(" list adding request succes");
}
catch(Exception e)
{
	
	e.printStackTrace();
	
}
















		
	%>
	
	<%
//lof
	
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
        location.href = "viewreqlistlor.jsp";
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
                        <li><a href="">Features</a></li>
                        <li><a href="addstaff.jsp">Add Staff</a></li>
                        <li ><a href="stuinbox.jsp" style="background-color:white; color:red;" >Notification[<%=sum%>] </a></li>
                         <li><a href="portfolio.html">Log Out</a></li>
                  
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
                <h2>Lorem ipsum dolor sit amet</h2>
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
  String d = (String)request.getAttribute("uid");
  System.out.println("=========="+d);

  Connection con2= ConnectionProvider.getCon();  
  Statement st1=con2.createStatement();

  	System.out.println("Deleting");

   String sq1 = "delete from approvedlofcertificate where u_id='"+d+"'";
  st1.executeUpdate(sq1);

  
  %>

	"Your request Has Been Declined !"
     
</div>
<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
  


    <section id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div class="footer-block">
                        <h4>Address</h4>
                        <hr/>
                        <p>Lorem ipsum dolor sit amet sit legimus copiosae instructior ei ut vix denique fierentis ea saperet inimicu ut qui dolor oratio mnesarchum.
                        </p>
                        <a href="#" class="learnmore">Learn More <i class="fa fa-caret-right"></i></a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div class="footer-block">
                        <h4>Useful Links</h4>
                        <hr/>
                        <ul class="footer-links">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Features</a></li>
                            <li><a href="#">Portfolio</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Sign In</a></li>
                            <li><a href="#">Sign Up</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div class="footer-block">
                        <h4>Community</h4>
                        <hr/>
                        <ul class="footer-links">
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Free Goods</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="footer-block">
                        <h4>Recent Posts</h4>
                        <hr/>
                        <ul class="footer-links">
                            <li>
                                <a href="#" class="post">Lorem ipsum dolor sit amet</a>
                                <p class="post-date">May 25, 2017</p>
                            </li>
                            <li>
                                <a href="#" class="post">Lorem ipsum dolor sit amet</a>
                                <p class="post-date">May 25, 2017</p>
                            </li>
                            <li>
                                <a href="#" class="post">Lorem ipsum dolor sit amet</a>
                                <p class="post-date">May 25, 2017</p>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>


    </section>

    <section id="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 btm-footer-links">
                    <a href="#">Privacy Policy</a>
                    <a href="#">Terms of Use</a>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 copyright">
                    Developed by <a href="#">Aspire Software Solutions</a> designed by <a href="#">Designing Team</a>
                </div>
            </div>
        </div>
    </section>
    <div id="panel">
        <div id="panel-admin">
            <div class="panel-admin-box">
                <div id="tootlbar_colors">
                    <button class="color" style="background-color:#1abac8;" onclick="mytheme(0)"></button>
                    <button class="color" style="background-color:#ff8a00;" onclick="mytheme(1)"> </button>
                    <button class="color" style="background-color:#b4de50;" onclick="mytheme(2)"> </button>
                    <button class="color" style="background-color:#e54e53;" onclick="mytheme(3)"> </button>
                    <button class="color" style="background-color:#1abc9c;" onclick="mytheme(4)"> </button>
                    <button class="color" style="background-color:#159eee;" onclick="mytheme(5)"> </button>
                </div>
            </div>

        </div>
        <a class="open" href="#"><span><i class="fa fa-gear fa-spin"></i></span></a>
    </div>

</body>

</html>
