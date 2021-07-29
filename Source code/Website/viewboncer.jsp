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


  <%@page import="java.util.Date"%>
   <%@page import="java.text.DateFormat"%>
    <%@page import="java.text.SimpleDateFormat"%>
     <%@page import="java.util.Calendar"%>
        <%@page import ="com.dao.ReadProper" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="scss/main.css">
    <link rel="stylesheet" href="scss/skin.css">


    <script src="./script/index.js"></script>
   
    <script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "hodrecreq.jsp";
        
        
        
        document.getElementById("myButton1").onclick = function () {
        location.href = "FileUpload.jsp";
    };
</script>


<style>

.mybutton
{
  background-color: #4CAF50; 

}
p {
  font-size: 25px;
}

h5 {
  font-size: 10px;
  align="center";
}
h6{
align="center";
}

input[type="text"] {

       border:none; /* Get rid of the browser's styling */
       border-bottom:1px solid black; /* Add your own border */
        background: transparent;

    }
    
    
    input[type="date"] {

       border:none; /* Get rid of the browser's styling */
       border-bottom:1px solid black; /* Add your own border */
        background: transparent;

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
<script>
$(document).ready(function(){
    // Get value on button click and show alert
    $("#myBtn").click(function(){
        var str = $("#myInput").val();
        alert(str);
    });
});
</script>
 <script type="text/javascript">
   var today = new Date();
var dd = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
var yyyy = today.getFullYear();

today = mm + '/' + dd + '/' + yyyy;


</script>
	
	<style>  
	th, td {  
	    text - align: center;  
	    border: 1 px solid black;  
	    border - collapse: collapse;  
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
                       
                      <!--   <li><a href="index.html">Log Out</a></li>-->
                  
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <!--/.nav-ends -->
    </header>

   

<div align = "center" style="font-family:verdana"">
 <%
 
 String name = "";
 String joinyear ="";
 String endyear = "";
 String course = "";
 String regno = "";
 String cdate ="";
 String filename="";
 String bcf = "";

String o = (String)request.getAttribute("success");
if(o != null)
{
	
	out.println("<font color=#159eee  size =4px>"+o+"</font>");
	
}
HttpSession sessions=request.getSession();  
String regno1 = (String)sessions.getAttribute("regno");
System.out.println("regno1---------"+regno1);
try{
	Connection conssss= ConnectionProvider.getCon();  
	Statement statement=conssss.createStatement();
	String sql ="select * from approvedboncertificate_copy where regno = '"+regno1+"' ";
	ResultSet resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
		
		name = resultSet.getString(1);
		regno = resultSet.getString(5);
		joinyear = resultSet.getString(2);
		endyear = resultSet.getString(3);
		course = resultSet.getString(4);
		cdate =resultSet.getString(7);
		filename = resultSet.getString(8);
		bcf = resultSet.getString(6);
		
}

} catch (Exception e) {
e.printStackTrace();
}




//get date 
DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
Date dateobj = new Date();
System.out.println(df.format(dateobj));
String d = df.format(dateobj);
	
Random rand = new Random(); 

// Generate random integers in range 0 to 999 
int rand_int1 = rand.nextInt(10000000); 

ReadProper property = new ReadProper();
System.out.println(property.getURLDetails());
String x = property.getURLDetails()+filename;
System.out.println("x------"+x);


		%>
	
	<br/>
	<div id="userdetail" media="all">
	<form action="BonCertificate" method="post"
				 enctype="multipart/form-data">
			
				<center>
				<font size=6></font>
				<br/>
					<table cellpadding=2 cellspacing=0 border="0" width="65%"
						height="70%" id="simpletable">
				
							
						<tr bgcolor="#FEF9E7">
					
							<td valign=top>
								<br />
								
										
									</sup> </b>
								<br>
								
									
							

								
							
							  	
										
							   
<br/>
<br/>
							    
    <div align="left">
							
														
								
										 
									</div>
        
	
 	
    
   
    

    
   
							<div align="right">
									
										 
								<div align="center"><h3 style="color:#191970;">PANIMALAR ENGINEERING COLLEGE</h3><h4 style="color:#191970;"><input  name="image" type="image" src="img/seal.png" width="150" height="150" align="left">(A Christian Minority Institution)</h4><h5 style="color:red;" style="text-align:center">JAISAKTHI EDUCATIONAL TRUST</h5><h5 style="color:#191970;" style="text-align:center"> Approved by All India Council for Technical Education, New Delhi</h5><h5 style="color:#191970;"style="text-align:center">All UG Programmes are Permanantly Affliated to Anna University</h5><h5 style="color:#191970;"style="text-align:center">All UG Programmes are Accredited by National Board of Accreditation (NBA)</h5><h5 style="color:#191970;"style="text-align:center">Approved by UGC for 2(f) & 12(B) Status</h5><h5 style="color:red;>Bangalore Trunk Road, Varadharajapuram, Nasarethpet, Poonamallee, Chennai-600 123.</h5><h5 style="color:#191970;">Phone: +91-44-26490404, 26490505, 26490717. Fax No:91-44-26490101</h5><h5 style="color:red;">
Email: info@panimalar.ac.in  Website: www.panimalar.ac.in</h5></div>	
									</div>
									
										
									</sup> </b>
                                                            <p align="left" "style=font-size:50%;">	Date   </p>
							                    
									<br/>
								

							<h5 align="center"><font face="Times New Roman" size="4" >BONAFIDE CERTIFICATE</h5> 
								
								
							
							
							
							<br/>
							<p style="color:black"; style="font-size:50%;">	This is to certify that Mr/Ms <input type="text"  name="sname" value="<%=name%>" size="10"	
							
								
									>				
									 (Register Number: <input type="text"  name="regno"  
								value="<%=regno%>"	size="10"> )is a bonafide student of our college studying B.E.<input type="text"  name="course" value="<%=course%>"
							
								
									size="34"	>
									 for the Academic year <input type="text"  name="joinyear"
									value ="<%=joinyear%>" size="9"> to <input type="text"  name="endyear"  value ="<%=endyear%>" size="9"	> 
									
							
							
	</p>						  	
										
							   
<br/>
<br/>
<br/>
<br/>

 <div>
   
   	<input  name="image" type="image"  align ="left" src="img/s33.PNG" width="150" height="150">									 
    </div>
<input  name="image"  align ="right" type="image" src="<%=x %>" width="150" height="150">
  <br/>
						
				</form>
		</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	<div id="print" align="center">
			<input type="button" value="Print" onclick="printDiv('userdetail')">
		</div>
		<br/>
		<%
		
		Connection con2= ConnectionProvider.getCon();  
		Statement st1=con2.createStatement();
		
   		System.out.println("Deleting");
   	
   	 String sq1 = "delete from approvedboncertificate where regno='"+regno+"'";
st1.executeUpdate(sq1);



Connection con21= ConnectionProvider.getCon();  
Statement st11=con21.createStatement();

	System.out.println("Deleting");

String sq11 = "delete from approvedboncertificate_copy where regno='"+regno+"'";
st11.executeUpdate(sq11);









		
		
		%>
		
		
		
		
		
<script> 
        var up = document.getElementById('GFG_UP'); 
        up.innerHTML = 'Click on the button to convert whole document to string'; 
  
        function GFG_Fun() { 
            var name = document.documentElement.innerHTML; 
             window.location.replace("Fileupload.jsp?name="+name);
          
          
        } 
    </script> 












  

      <script>
    var doc = new jsPDF();

 function saveDiv(divId, title) {
	 alert("yes");
 doc.fromHTML(`<html><head><title>${title}</title></head><body>` + document.getElementById(divId).innerHTML + `</body></html>`);
 doc.save('div.pdf');
}

  
    </script>
  
<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
  


    
    
    <script>
    var doc = new jsPDF();

 function saveDiv(divId, title) {
	 alert("yes");
 doc.fromHTML(`<html><head><title>${title}</title></head><body>` + document.getElementById(divId).innerHTML + `</body></html>`);
 doc.save('div.pdf');
}

  
    </script>
<script>

function openCity(evt, cityName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
}
</script>

		<script>
function myFunction() {
	var input, filter, table, tr, td, i;
	input = document.getElementById("search");
	filter = input.value.toUpperCase();
	table = document.getElementById("myTable");
	tr = table.getElementsByTagName("tr");
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[0];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}
</script>

<script>
	
	function generate() {  
	
	
	    var doc = new jsPDF('p', 'pt', 'letter');  
	    var htmlstring = '';  
	    var tempVarToCheckPageHeight = 0;  
	    var pageHeight = 0;  
	    pageHeight = doc.internal.pageSize.height;  
	    specialElementHandlers = {  
	        // element with id of "bypass" - jQuery style selector  
        '#bypassme': function(element, renderer) {  
	            // true = "handled elsewhere, bypass text extraction"  	            return true  
	        }  
	    };  
	    margins = {  
	        top: 150,  
	        bottom: 60,  
	        left: 40,  
	        right: 40,  
	        width: 600  
	    };  
	     
	    doc.autoTable({  
	        html: "#simpletable", 
	        startY: 70,  
	        theme: 'grid',  
	        columnStyles: {  
	            0: {  
	                cellWidth: 180,  
	            },  
	            1: {  
                cellWidth: 180,  
	            },  
	            2: {  
	                cellWidth: 180,  
	            }  
	        },  
	        styles: {  
	            minCellHeight: 40  
	        }  
	    })  
	    doc.save('Marks_Of_Students.pdf');  
	}  
	</script>  




	<script>
function myDocument(source) {
	alert(source)
	var name = document.getElementById("doc");
	var clone = name.cloneNode(true);
	clone.setAttribute('src', source);
	name.parentNode.replaceChild(clone, name)
}
</script>

		<script>
function printDiv(divName) {

	var printContents = document.getElementById(divName).innerHTML;
	var originalContents = document.body.innerHTML;
	document.body.innerHTML = printContents;
	window.print();
	document.body.innerHTML = originalContents;
}
</script>

		<script type="text/javascript">
function validate() {
	var name = document.forms["driving"]["Name"];
	var dob = document.forms["driving"]["DOB"];
	var doi = document.forms["driving"]["DOI"];
	var doe = document.forms["driving"]["DOE"];
	var sdw = document.forms["driving"]["SDW"];
	var address = document.forms["driving"]["Address"];

	
	

	if (address.value == "") {
		alert("Please enter your address.");
		address.focus();
		return false;
	}

	if (sdw.value == "") {
		alert("Please enter all Field");
		sdw.focus();
		return false;
	}

	if (dob.value == "") {
		alert("Please enter Date of Birth");
		dob.focus();
		return false;
	}

	if (doi.value == "") {
		alert("Please enter Date of Issue");
		password.focus();
		return false;
	}
	if (doe.value == "") {
		alert("Please enter Validity Date");
		doe.focus();
		return false;
	}
	if (dob.value != "") {
		var d = dob.value;
		var res = d.split("-");
		var yyy = parseInt(res[0]) + 18;
		var mon = res[1] - 1;
		var date = res[2];
		alert(yyy);
		alert(mon);
		alert(date);
		if (new Date(yyy, mon, date) <= new Date()) {
			return true;
		} else {
			alert('Age is less than 18')
		}
		return false;
	}

	return true;
}</script>

</body>

</html>
