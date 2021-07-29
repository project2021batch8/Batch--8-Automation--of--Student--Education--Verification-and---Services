<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
      <link rel="stylesheet" href="scss/my.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
    <script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "bor.jsp";
        
        
        
        document.getElementById("myButton1").onclick = function () {
        location.href = "lor.jsp";
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
                     
                        <li><a href="studenthome.jsp">Back</a></li>
                         
                  
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

String o = (String)request.getAttribute("fail");
if(o != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o+"</font>");
	
}


 

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
String name =(String)sessions.getAttribute("name");

System.out.println("BOR.jsp----chooose options");
System.out.println(stuid+"--"+regno+"--"+dob+"--"+emails+"--"+passwords+"--"+course+"--"+category+"--"+jyear+"-"+eyear+"--"+gender+"--"+name);
%>
  <h1>Select The Reason</h1>
  

<br/>
 
    <form action="BorRequest">
    <input type="hidden" id="custId" name="stuid" value="<%=stuid %>">
    <input type="hidden" id="custId" name="regno" value="<%=regno %>">
     <input type="hidden" id="custId" name="dob"value="<%=dob %>">
      <input type="hidden" id="custId" name="emails" value="<%=emails %>">
       <input type="hidden" id="custId" name="passwords" value="<%=passwords %>">
        <input type="hidden" id="custId" name="course" value="<%=course %>">
        
         <input type="hidden" id="custId" name="category" value="<%=category %>">
          <input type="hidden" id="custId" name="jyear" value="<%=jyear %>">
           <input type="hidden" id="custId" name="eyear" value="<%=eyear %>">
     <input type="hidden" id="custId" name="gender" value="<%=gender %>">
      <input type="hidden" id="custId" name="name" value="<%=name %>">
  <label for="cars"> Reason:</label>
  <select name="reasonbof" id="cars">
    <option value="Passport application and visa extension">Passport application and visa extension</option>
    <option value="To apply for educational loans">To apply for educational loans</option>
    <option value="To attend a seminar and workshops at other academic institutions">To attend a seminar and workshops at other academic institutions</option>
    <option value="To visit an industry for project work">To visit an industry for project work</option>
        <option value="To avail travel concessions">To avail travel concessions</option>
          <option value="To join a public library">To join a public library</option>
  </select>
  <br><br>
  
     <input type = "submit" id="buttcolor" value="Submit"/>
            
      
  
  
  
  

  
  
  
  
  
  
  
  

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
