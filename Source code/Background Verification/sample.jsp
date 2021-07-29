<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>


	<!--// if i change this line with this line: [color=red]</body>%= new ReadMail() %>[/color] i will get, in HTML output, [color=green]"Testing mail reading..."[/color] in the first paragraph and a weird memory reference?!? [color=green] "ReadMail.ReadMail@41d46f4c"[/color] in the second paragraph.-->
     ${rm.printEnvelope(message)};    
		<!--// this line was just for testing purposes as i was not getting any results at all. It was just another different approach i guess. I'm still not getting results.-->
		
</body>
</html>
