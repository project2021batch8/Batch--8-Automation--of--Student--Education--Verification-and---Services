<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>

	<title></title>
	<!--

    Template 2106 Soft Landing

	http://www.tooplate.com/view/2106-soft-landing

    -->
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="team" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">

</head>
<body>

<%

try
{
String btn=request.getParameter("btn");
	if(btn.equals("Update"))
	{
	String em=request.getParameter("email");
	String pw=request.getParameter("pass");
        //out.print("update admin set email='"+em+"',pass='"+pw+"' where username='admin'");
	stmt.executeUpdate("update admin set email='"+em+"',pass='"+pw+"' where username='admin'");
	%>
	<script language="javascript">
	alert("Updated Success");
	window.location.href="admin.jsp";
	</script>
	<%
	}
}
catch(Exception e)
{

}


%>

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="" class="navbar-brand">Background Verification Software</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                       <li><a href="admin.jsp" class="smoothScroll">Home</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">Logout</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                      
                    </ul>
               </div>

          </div>
     </section>

<!-- FEATURE -->
     <section id="home" data-stellar-background-ratio="0.5">
          <div class="overlay"></div>
          <div class="container">
               <div class="row">

                 

               </div>
          </div>
     </section>
	 
 <div class="row">
  
  			<div class="col-lg-3">
			
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			
            <div class="col-lg-6">
              <div class="card">
                <div class="card-header d-flex align-items-center">
                  <h2 class="h5 display display">
                    <h3>E-mail Details</h3>
                  </h2>
                </div>
                <div class="card-block">
                  <p></p>
                  <form name="name" method="post">
				  <%
				  Statement stmt2=Con.createStatement();
				  ResultSet rs2=stmt2.executeQuery("select * from admin");
          if(rs2.next())
		  {
				  
				  %>
                   E-mail: <%=rs2.getString("email")%>
				   <% //=rs2.getString("pass")%>
				   <%
				   }
				   %>
				   <p>&nbsp;</p>
				   <p>&nbsp;</p>
					<div class="form-group">
                      <label>E-mail</label>
                      <input type="text" name="email" placeholder="E-mail ID" class="form-control" required>
                    </div>
                    <div class="form-group">       
                      <label>Password</label>
                      <input type="password" name="pass" placeholder="E-mail Password" class="form-control" required>
                    </div>
                    <div class="form-group">       
                      <input type="submit" name="btn" value="Update" class="btn btn-primary">
                    </div>
					
                  </form>
                </div>
              </div>
    </div>
	
	
	<div class="col-lg-3">
			
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>

</div>


   

     <!-- FOOTER -->
     <footer id="footer" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="copyright-text col-md-12 col-sm-12">
                         <div class="col-md-6 col-sm-6">
                              <p>Copyright &copy; 2021 </p>
                         </div>

                         <div class="col-md-6 col-sm-6">
                              <ul class="social-icon">
                                  
                              </ul>
                         </div>
                    </div>

               </div>
          </div>
     </footer>


     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>