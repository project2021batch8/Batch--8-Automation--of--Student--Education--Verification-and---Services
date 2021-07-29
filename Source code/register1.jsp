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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
    <style>
a:link {
  
  color: white;
  
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  color: white;
}

</style>
 <style>
a:link {
 
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  
  color: white;
}

</style>
<style>
.dropbtn {
  background-color: #4CA3AF;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3d5a5e;
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
                        
                        <li><a href="index.html">Back</a></li>
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
                <h2>REGISTRATION</h2>
            </div>
        </div>
    </section>

<div align = "center" style="font-family:verdana"">
 <%

 String c = request.getParameter("sess");
if(c != null)
{
    
    out.println("<font color=#FA0505    size =4px>"+c+"</font>");
    
}


%>
<br/>
  <br/>
  <p>Move the mouse over the button to open the dropdown menu.</p>

<div class="dropdown">
  <button class="dropbtn">Register as</button>
  <div class="dropdown-content">
  <a href="addstaff.jsp">Staff</a>
  <a href="addstudent.jsp">Student</a>
  </div>
</div>
<!--   <a href="addstudent.jsp">Student</a>
  <br>
  <br>
  <a href="addstaff.jsp">Staff</a> -->
<!--  <form action="student.jsp" method="POST">
       <input type="submit"/>
     </form>
     <form action="stafflog.jsp" method="POST">
       <input type="submit"/>
     </form> -->
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
                        <p>Bangalore Trunk Road, Varadharajapuram, Poonamallee, Chennai 600 123.
                        </p>
                    </div>
                </div>

               <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div class="footer-block">
                        <h4>Website</h4>
                        <hr/>
                        <ul class="footer-links">
                            <li><a href="https://panimalar.ac.in">https://panimalar.ac.in</a></li>
                           
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div id="social-6071ab93585f4" class="align-left">
                        <h4>Contact Us</h4>
                        <hr/>
                        <ul class="footer-links">
                            <p class="fmail">info@panimalar.ac.in</p>
                            <section id="social-2" class="widget widget_social_networks"><li><a href="" rel="nofollow" class="builtin-icons custom large facebook-hover" target="_blank" alt="Follow Us on facebook" title="Follow Us on facebook"><svg  class="mk-svg-icon" data-name="mk-jupiter-icon-facebook" data-cacheid="icon-6071ab9358729" style=" height:32px; width: 32px; "  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M256-6.4c-141.385 0-256 114.615-256 256s114.615 256 256 256 256-114.615 256-256-114.615-256-256-256zm64.057 159.299h-49.041c-7.42 0-14.918 7.452-14.918 12.99v19.487h63.723c-2.081 28.41-6.407 64.679-6.407 64.679h-57.566v159.545h-63.929v-159.545h-32.756v-64.474h32.756v-33.53c0-8.098-1.706-62.336 70.46-62.336h57.678v63.183z"/></svg></a><a href="" rel="nofollow" class="builtin-icons custom large linkedin-hover" target="_blank" alt="Follow Us on linkedin" title="Follow Us on linkedin"><svg  class="mk-svg-icon" data-name="mk-jupiter-icon-linkedin" data-cacheid="icon-6071ab935884d" style=" height:32px; width: 32px; "  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M256-6.4c-141.385 0-256 114.615-256 256s114.615 256 256 256 256-114.615 256-256-114.615-256-256-256zm-96.612 95.448c19.722 0 31.845 13.952 32.215 32.284 0 17.943-12.492 32.311-32.592 32.311h-.389c-19.308 0-31.842-14.368-31.842-32.311 0-18.332 12.897-32.284 32.609-32.284zm32.685 288.552h-64.073v-192h64.073v192zm223.927-.089h-63.77v-97.087c0-27.506-11.119-46.257-34.797-46.257-18.092 0-22.348 12.656-27.075 24.868-1.724 4.382-2.165 10.468-2.165 16.583v101.892h-64.193s.881-173.01 0-192.221h57.693v.31h6.469v19.407c9.562-12.087 25.015-24.527 52.495-24.527 43.069 0 75.344 29.25 75.344 92.077v104.954z"/></svg></a><a href="" rel="nofollow" class="builtin-icons custom large instagram-hover" target="_blank" alt="Follow Us on instagram" title="Follow Us on instagram"><svg  class="mk-svg-icon" data-name="mk-jupiter-icon-instagram" data-cacheid="icon-6071ab93589c7" style=" height:32px; width: 32px; "  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M375.3,197.7L375.3,197.7c-0.6-11.5-2.2-20.4-5-27.1c-2.5-6.7-5.7-11.8-10.9-17c-5.9-5.5-10.5-8.4-16.9-10.9 c-4.1-1.8-11.3-4.3-27.1-5c-15.4-0.7-20.4-0.7-58.8-0.7s-43.4,0-58.8,0.7c-11.5,0.6-20.4,2.2-27,5c-6.7,2.5-11.8,5.7-17,10.9 c-5.5,5.9-8.4,10.5-10.9,16.9c-1.8,4.1-4.3,11.3-5,27.1c-0.7,15.4-0.7,20.4-0.7,58.8s0,43.4,0.7,58.8c0.4,14.3,2.9,22,5,27.1 c2.5,6.7,5.7,11.8,10.9,17c5.9,5.5,10.5,8.4,16.9,10.9c4.1,1.8,11.3,4.3,27.1,5c15.4,0.7,20.4,0.7,58.8,0.7s43.4,0,58.8-0.7 c11.5-0.6,20.4-2.2,27-5c6.7-2.5,11.8-5.7,17-10.9c5.5-5.9,8.4-10.5,10.9-16.9c1.8-4.1,4.3-11.3,5-27.1l0.2-3.4 c0.6-13.1,0.9-19.7,0.5-55.5C376,218,376,213.1,375.3,197.7z M351.4,178.7c0,9.4-7.7,17.1-17.1,17.1c-9.4,0-17.1-7.7-17.1-17.1 c0-9.4,7.7-17.1,17.1-17.1C343.7,161.6,351.4,169.3,351.4,178.7z M256.5,330.6c-40.9,0-74.1-33.2-74.1-74.1 c0-40.9,33.2-74.1,74.1-74.1c40.9,0,74.1,33.2,74.1,74.1C330.6,297.4,297.4,330.6,256.5,330.6z"/><ellipse transform="matrix(0.9732 -0.2298 0.2298 0.9732 -52.0702 65.7936)" cx="256.5" cy="256.5" rx="48.9" ry="48.9"/><path d="M437.9,75.1C389.4,26.7,325,0,256.5,0C188,0,123.6,26.7,75.1,75.1S0,188,0,256.5C0,325,26.7,389.4,75.1,437.9 C123.6,486.3,188,513,256.5,513c68.5,0,132.9-26.7,181.4-75.1C486.3,389.4,513,325,513,256.5C513,188,486.3,123.6,437.9,75.1z  M400.8,316.4L400.8,316.4c-0.6,14.1-2.7,24.7-6.8,35.3c-4.2,10.5-9.2,18.2-16.7,25.6c-8,8-16,13.2-25.6,16.7 c-10.4,4-21.3,6.1-35.3,6.8c-15.4,0.7-20.5,0.7-59.9,0.7c-39.3,0-44.4,0-59.9-0.7c-14.1-0.6-24.7-2.6-35.3-6.8 c-10.5-4.2-18.2-9.2-25.6-16.7c-8.1-8.1-13.2-16-16.7-25.6c-4-10.4-6.1-21.3-6.8-35.3c-0.7-15.4-0.7-20.5-0.7-59.9 c0-39.3,0-44.4,0.7-59.9c0.6-14.1,2.6-24.7,6.8-35.3c3.9-9.7,9-17.6,16.7-25.6c8.1-8.1,16-13.2,25.6-16.7c10.4-4,21.3-6.1,35.3-6.8 c15.4-0.7,20.5-0.7,59.9-0.7c39.3,0,44.4,0,59.9,0.7c14.1,0.6,24.7,2.6,35.3,6.8c10.5,4.2,18.1,9.2,25.6,16.7 c8,8.1,13.2,16,16.7,25.6c4,10.4,6.1,21.3,6.8,35.3c0.7,15.4,0.7,20.5,0.7,59.9C401.5,295.8,401.5,300.9,400.8,316.4z"/></svg></a><a href="" rel="nofollow" class="builtin-icons custom large twitter-hover" target="_blank" alt="Follow Us on twitter" title="Follow Us on twitter"><svg  class="mk-svg-icon" data-name="mk-jupiter-icon-twitter" data-cacheid="icon-6071ab9358af0" style=" height:32px; width: 32px; "  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M256-6.4c-141.385 0-256 114.615-256 256s114.615 256 256 256 256-114.615 256-256-114.615-256-256-256zm146.24 258.654c-31.365 127.03-241.727 180.909-338.503 49.042 37.069 35.371 101.619 38.47 142.554-3.819-24.006 3.51-41.47-20.021-11.978-32.755-26.523 2.923-41.27-11.201-47.317-23.174 6.218-6.511 13.079-9.531 26.344-10.407-29.04-6.851-39.751-21.057-43.046-38.284 8.066-1.921 18.149-3.578 23.656-2.836-25.431-13.295-34.274-33.291-32.875-48.326 45.438 16.866 74.396 30.414 98.613 43.411 8.626 4.591 18.252 12.888 29.107 23.393 13.835-36.534 30.915-74.19 60.169-92.874-.493 4.236-2.758 8.179-5.764 11.406 8.298-7.535 19.072-12.719 30.027-14.216-1.257 8.22-13.105 12.847-20.249 15.539 5.414-1.688 34.209-14.531 37.348-7.216 3.705 8.328-19.867 12.147-23.872 13.593-2.985 1.004-5.992 2.105-8.936 3.299 36.492-3.634 71.317 26.456 81.489 63.809.719 2.687 1.44 5.672 2.1 8.801 13.341 4.978 37.521-.231 45.313-5.023-5.63 13.315-20.268 23.121-41.865 24.912 10.407 4.324 30.018 6.691 43.544 4.396-8.563 9.193-22.379 17.527-45.859 17.329z"/></svg></a></li>
                            
                        </ul>
                    </div>
                </div>
<style>
						#social-6071ab93585f4 a { 
							opacity: 1 !important;color: #f3b40e !important;}
						#social-6071ab93585f4 a:hover { color: #ffffff !important;}
						#social-6071ab93585f4 a:hover .mk-svg-icon { fill: #ffffff !important;}</style>

               


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
