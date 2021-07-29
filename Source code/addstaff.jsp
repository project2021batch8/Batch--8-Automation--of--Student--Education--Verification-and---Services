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
                <h2>STAFF REGISTER</h2>
            </div>
        </div>
    </section>

<div align = "center" style="font-family:verdana"">
 <%

String o = (String)request.getAttribute("fail");
 String o1 = (String)request.getAttribute("success");
if(o != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o+"</font>");
	
}
if(o1 != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o1+"</font>");
	
}

%>
 
  <br/>
            <form action = "AddStaff" method = "get"> 
  <table>
  

  
  
    <tr>
  <td>
  
 <label for="male"> Staff Name: </label></td>
<td>  <input type="text" name="name" required></td>

</tr>
  
  
      <tr>
  <td>
  <br/>
 <label for="male">DOB: </label></td >
<td>  <input type="date" name="dob"  style="height:30px;font-size:13.5pt;" required></td>

</tr>



<tr>
 
 <td>
   <br/>
  <label for="cars" required>Gender:</label>
 
 <td>
 <br>
 <input type="radio" id="male" name="rrt" value="yes">
   <label for="male">Male</label><br> 
  <input type="radio" id="female" name="rrt" value="no"> 
  <label for="female">Female</label><br>
  


</tr>
  <tr>


<td>
  <br/>
  <label for="cars">Education:</label>
<td>
<select name="education"  required id="cars">
  <option value="mphil">M Tech</option>
  <option value="cse">PhD</option>
  <option value="mca">MCA</option>
  <option value="mba">MBA</option>
  
      <option value="bachoftechnology">BE/B.Tech- Bachelor of Technology</option>
</td>
</select>
</td>


</tr>
  
  
  
  <tr>
  <td>
    <br/>
 <label for="male" required>Email: </label></td>
<td>  <input type="email" name="email" required></td>

</tr>
  <tr>
  <td>
  <br/>
 <label for="male">Password: </label></td>
<td>  <input type="password" name="password" required ></td>

</tr>












  <tr>


<td>
  <br/>

  <label for="cars" required>Designation:</label>
<td>
<select name="designation" id="cars" style="height:30px;font-size:13.8pt;">
  <option value="assitantprofessor">Assistant Professor</option>
  <option value="professor">Professor</option>
  <option value="professor&head">Professor & Head</option>
  <option value="associateprofessor">Assoiciate Professor</option>
  <option value="sassociateprofessor">Senior Assoiciate Professor</option>
    <option value="ssassociateprofessor">Senior Professor</option>
     <option value="libadmin">Lib Admin</option>
      <option value="assprofessor">Assistant Professor</option>
</td>
</select>
</td>









<tr>


<td>
  <br/>
  <label for="cars" required>Department:</label>
<td>
<select name="department" id="cars">
  <option value="cse">CSE</option>
  <option value="ece">ECE</option>
  <option value="it">IT</option>
  <option value="eie">EIE</option>
  
   <option value="eee">EEE</option>
    <option value="civil">Civil</option>
     <option value="mech">Mechanical</option>
      
</td>
</select>
</td>


</tr>



  </table>
  <br>
  <input type="submit"  value ="Register" style="background-color:#159eee   ;color:white;width:100px;height:30px;">
     
   </form>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
  


    
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
