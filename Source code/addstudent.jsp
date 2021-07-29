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
     <link rel="stylesheet" href="scss//my.css">
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
                <h2>Student Register</h2>
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
  <h2> </h2>
  <br/>
            <form action = "AddStudent" method = "get"> 
  <table>
  
  

  

  <tr>
  <td>
 <label for="male">Student Name: </label></td>
<td>  <input type="text" name="sname" required></td>
  </tr>
  
    <tr>
    <td>
     <br>
 <label for="male">Reg No: </label></td>
<td>  <input type="text" name="regno" required></td>
  </tr>
  
  
  


    <tr>
  <td>
  <br>
 <label for="male">DOB: </label></td>
<td>  <input type="date" name="dob" style="height:30px;font-size:13.5pt;" required></td>
  </tr>
  
  

  
  
  
  

  
  
  
  
  <tr>
  <td>
    <br>
 <label for="male">Email: </label></td>
<td>  <input type="email" name="email" style="height:30px;font-size:12pt;" required></td>

</tr>
  <tr>
  <td>
      <br>
 <label for="male">Password: </label></td>
<td>  <input type="password" name="password"  required></td>

</tr>
  <tr>


<td>
    <br>
  <label for="cars" required>Course:</label>
<td>
<select name="course" id="cars" >
 <option value="Computer Sciience and Engineering">CSE</option>
  <option value="Electronics and Communication Engineering">ECE</option>
  <option value="Information and Technology">IT</option>
  <option value="Electronics and Instrumentation Engineering">EIE</option>
  
   <option value="Electronics and Electrical Engineering">EEE</option>
    <option value="Civil Engineering">Civil</option>
     <option value="Mechanical Engineering">Mechanical</option>
      
  </td>
</select>
</td>


</tr>
  <tr>


<td>
    <br>
  <label for="cars" required>Category:</label>
<td>
<select name="category" id="cars">
  <option value="OC">OC</option>
  <option value="BC">BC</option>
  <option value="MBC">MBC</option>
  <option value="AC">AC</option>
</td>
</select>
</td>

<tr>


<td>
    <br>
  <label for="cars" required>Joining Year:</label>
<td>
 <input type="date" name="jyear" style="height:30px;font-size:13.5pt;">
</td>


</tr>







 
 <td>
     <br>
  <label for="cars" required>Gender:</label>
 
 <td>
 <br>
 <input type="radio" id="male" name="rrt" value="male">
   <label for="male">Male</label><br> 
  <input type="radio" id="female" name="rrt" value="female"> 
  <label for="female">Female</label><br>
  


</tr>


  <tr>
  <td>
      <br>
 <label for="male">Address: </label></td>
<td><textarea id="w3review" name="address" rows="4" cols="35" required></textarea>
<br/>
<br/>
</td>

</tr>
  <tr>




  <tr>
  <td>
      <br>
 <label for="male">Location: </label></td>
<td>  <input type="text" name="location" required></td>
  </tr>











  <tr>
  <td>
      <br>
 <label for="male">Pincode: </label></td>
<td> <input name="pincode" type="text"  maxlength="10" required></td>

</tr>
  <tr>





  </table>
  <br>
  <input type="submit"  value ="Register" style="background-color:#159eee;color:white;width:100px;height:30px;">
     
   </form>
</div>

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
