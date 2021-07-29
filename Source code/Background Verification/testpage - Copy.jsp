<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Address"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Message"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="javax.mail.search.FlagTerm"%>
<%@page import="javax.mail.Flags"%>
<%@page import="javax.mail.Folder"%>
<%@page import="javax.mail.Store"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
 
</head>

<body bgcolor="#FFFFFF">
    <%
    String em="",pw="";
     try
    {
       
	Statement stmt4=Con.createStatement();
	ResultSet rs4=stmt4.executeQuery("select * from admin");
        rs4.next();
	 em=rs4.getString("email");
	 pw=rs4.getString("pass"); 
         
    }
    catch(Exception e)
    {
        //out.print(e.getMessage());
    }
				  
        Folder inbox;
         final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
      
        //Set email properties
        Properties props = System.getProperties();
         
        props.setProperty("mail.imap.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.imap.socketFactory.fallback", "false");
        props.setProperty("mail.imap.port", "993");
        props.setProperty("mail.imap.socketFactory.port", "993");
        props.put("mail.imap.host", "imap.gmail.com");
         
         try
        {
            //Create the session and get the store to read email
            Session session1 = Session.getDefaultInstance(props, null);
            Store store = session1.getStore("imap");
           
       
            store.connect("imap.gmail.com", 993, em, pw);
             
            //Mention which folder we want to read, open it and get unread messages
            inbox = store.getFolder("INBOX");
            inbox.open(Folder.READ_ONLY);
             
            Flags seenEmail = new Flags(Flags.Flag.SEEN);
            FlagTerm unseenFlagTerm = new FlagTerm(seenEmail, false);
             
            Message messages[] = inbox.search(unseenFlagTerm);
            ////out.println("Nº of unread messages: " + messages.length);
             
            //Use a FetchProfile
            ////FetchProfile fp = new FetchProfile();
             
            ////fp.add(FetchProfile.Item.ENVELOPE);
            ////fp.add(FetchProfile.Item.CONTENT_INFO);
            ////inbox.fetch(messages, fp);
             String sender=""; 
             String subj="";
             String mess="";
             String dtt="";
             String sss="";
             Address[] a;
             String from = null, to = null;
             Statement stmt2=Con.createStatement();
             Statement stmt3=Con.createStatement();
             Statement stmt4=Con.createStatement();
            try
            {
                ////System.out.println("Count="+messages.length);
               ////System.out.println(messages[0]);
               
               ////printAllMessages(messages);
              if (messages.length == 0) System.out.println("No messages found.");
int x=0;

out.print("<h2 align=center>Background Verification</h2>");
    for (int i = 0; i < messages.length; i++) {
      // stop after listing ten messages
      if (i > 10) {
        System.exit(0);
        inbox.close(true);
        store.close();
      }
      //subj=messages[i].getSubject();
      //dtt=messages[i].getSentDate().toString();
    
      //out.println("<br><<<==========Message=======>>><br>Message " + (i + 1));
      
      
      //out.println("<br>From : "+messages[i].getFrom()[0]+" , " + ((InternetAddress)((Address)(messages[i].getFrom()[0]))).getAddress());
      
      /*if ((a = messages[i].getFrom()) != null) {
        for (int j = 0; j < a.length; j++) {
				from = a[j].toString();
				out.println("FROM: " + a[j].toString());
			}
      }*/
      // Printing TO
	if ((a = messages[i].getRecipients(Message.RecipientType.TO)) != null) {
			for (int j = 0; j < a.length; j++) {
				to = a[j].toString();
				//out.println("TO: " + a[j].toString());
			}
		}
        sender=((InternetAddress)((Address)(messages[i].getFrom()[0]))).getAddress();
        subj=messages[i].getSubject();
        dtt=(messages[i].getSentDate()).toString();
      //out.println("<br>Subject : " + messages[i].getSubject());
      //out.println("<br>Sent Date : " + messages[i].getSentDate());
      ////System.out.println("Text: " + messages[i].getContent());
      InputStream is = messages[i].getInputStream();
      InputStreamReader isReader = new InputStreamReader(is);
		BufferedReader reader = new BufferedReader(isReader);
		StringBuffer sb = new StringBuffer(); //creates an empty string buffer with the initial capacity of 16.
		String str;
                int mj=0;
                String ss1="";
		while ((str = reader.readLine()) != null) {
			//sb.append("#="+str+"<br>");
                       ss1+=""+str;
			
				//str = reader.readLine();
                                //out.println("<br>#="+mj+"=> "+str);
                           
			mj++;
		}
      //String message = sb.toString();
      //out.println(ss1);
      String cname[];
      String rno[];
      String clg[];
      String qua[];
      String cgp[];
      String pas;
      String cname1,rno1,clg1,qua1,cgp1;
	  String c1,c2,c3,c4,c5,c6;
      out.println("<div align=center>===================</div>");
      String ss2[]=ss1.split("Candidates Name:");
      String ss3[]=ss1.split("Registration Number:");
      String ss4[]=ss1.split("College Name:");
      String ss5[]=ss1.split("Qualification:");
      String ss6[]=ss1.split("CGPA Obtained:");
      String ss7[]=ss1.split("Passed Out:");
      for(int k=0;k<ss2.length;k++)
      {
      //out.print(ss2[k]+"<br>");
      
      }
      cname=ss2[1].split(",");
      //out.print("<br>"+cname[0]);
      rno=ss3[1].split(",");
      //out.print("<br>"+rno[0]);
      clg=ss4[1].split(",");
      //out.print("<br>"+clg[0]);
      qua=ss5[1].split(",");
      //out.print("<br>"+qua[0]);
      cgp=ss6[1].split(",");
      //out.print("<br>"+cgp[0]);
      
      //out.print(ss7[2]+"<br>");
      
     pas=ss7[2].trim();
	 pas=pas.substring(0,4);
      //out.print("<br>"+pas.substring(0,4));
      
      cname1=cname[0].trim();
      rno1=rno[0].trim();
      clg1=clg[0].trim();
      qua1=qua[0].trim();
      cgp1=cgp[0].trim();
      
      if(ss2.length>1)
      {
          
          ResultSet rs2=stmt2.executeQuery("select * from read_data where sender='"+sender+"' && dtime='"+dtt+"'");
          if(rs2.next())
          {
              //out.print("yes");
          }
          else
          {
              x++;
              //out.print("no");
          //out.print("<p align=center>No. of Unread: "+x+"</p>");
          //out.print("<p align=center>Sender:"+sender+"</p>");
          //out.print("<p align=center>Subject:"+subj+"</p>");
          //out.print("<p align=center>Date:"+dtt+"</p>");
              
          //verify
          ResultSet rs3=stmt3.executeQuery("select * from student_data where email='"+sender+"'");
          rs3.next();
          
          if(cname1.equals(rs3.getString("name")))
          {
              c1="Verified";
          }
          else
          {
              c1="Not Verified";
          }
		  if(rno1.equals(rs3.getString("regno")))
          {
              c2="Verified";
          }
          else
          {
              c2="Not Verified";
          }
		  if(clg1.equals(rs3.getString("college")))
          {
              c3="Verified";
          }
          else
          {
              c3="Not Verified";
          }
          if(qua1.equals(rs3.getString("qualification")))
          {
              c4="Verified";
          }
          else
          {
              c4="Not Verified";
          }
		  if(cgp1.equals(rs3.getString("cgpa")))
          {
              c5="Verified";
          }
          else
          {
              c5="Not Verified";
          }
		  if(pas.equals(rs3.getString("year")))
          {
              c6="Verified";
          }
          else
          {
              c6="Not Verified";
          }
          %>
		  
		 <!-- <table width="567" height="103" border="0" align="center">
            <tr>
              <td align="left">No. of Unread: </%=x%></td>
            </tr>
            <tr>
              <td align="left">Sender: </%=sender%></td>
            </tr>
            <tr>
              <td align="left">Subject: </%=subj%></td>
            </tr>
			<tr>
              <td align="left">Date: </%=dtt%></td>
            </tr>
			<tr>
              <td align="left">Candidates Name: </%=cname1%> -- </%=c1%></td>
            </tr>
			<tr>
              <td align="left">Registration Number: </%=rno1%> -- </%=c2%></td>
            </tr>
			<tr>
              <td align="left">College Name: </%=clg1%> -- </%=c3%></td>
            </tr>
			<tr>
              <td align="left">Qualification: </%=qua1%> -- </%=c4%></td>
            </tr>
			<tr>
              <td align="left">CGPA Obtained: </%=cgp1%> -- </%=c5%></td>
            </tr>
			<tr>
              <td align="left">Passed Out: </%=pas%> -- </%=c6%></td>
            </tr>
          </table>-->
		 <table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
           <tr>
             <th width="9%">S.No</th>
             <th width="29%">Sender</th>
             <th width="26%">Subject</th>
             <th width="36%">Date / Time </th>
           </tr>
           <%
                  int ii=0;
                  ResultSet rs4=stmt4.executeQuery("select * from read_data order by id desc");
                  while(rs4.next())
                  {
                      ii++;
                  %>
           <tr>
             <td><%=ii%></td>
             <td><%=rs4.getString("sender")%></td>
             <td><%=rs4.getString("subject")%></td>
             <td><%=rs4.getString("dtime")%></td>
           </tr>
           <%
          }
                  %>
         </table>
<%
          
                //read once
                String qry = "select max(id) as maxid from read_data";
                    ResultSet rs = stmt.executeQuery(qry);
                    rs.next();
                    int id1 = rs.getInt("maxid");
                    int id2 = id1 + 1;
					
               String ins = "insert into read_data(id,subject,sender,dtime,status) values(" + id2 + ",'"+subj+"','"+sender+"','"+dtt+"','0')";
                    //out.print(ins);
                   int n=stmt.executeUpdate(ins);
               ///Reply Message////////
			   /*mess="Candidates Name: "+cname1+" -- "+c1+"\n";
               mess+="Registration Number: "+rno1+" -- "+c2+"\n";
               mess+="College Name: "+clg1+" -- "+c3+"\n";
               mess+="Qualification: "+qua1+" -- "+c4+"\n";
               mess+="CGPA Obtained: "+cgp1+" -- "+c5+"\n";
               mess+="Passed Out: "+pas+" -- "+c6+"\n";*/
              
                   mess="<table border=1>";
               mess+="<tr><td>Candidates Name </td><td>:"+cname1+" </td><td> "+c1+"</td></tr>";
               mess+="<tr><td>Registration Number  </td><td>:"+rno1+" </td><td> "+c2+"</td></tr>";
               mess+="<tr><td>College Name  </td><td>:"+clg1+" </td><td> "+c3+"</td></tr>";
               mess+="<tr><td>Qualification  </td><td>:"+qua1+" </td><td> "+c4+"</td></tr>";
               mess+="<tr><td>CGPA Obtained  </td><td>:"+cgp1+" </td><td> "+c5+"</td></tr>";
               mess+="<tr><td>Passed Out  </td><td>:"+pas+" </td><td> "+c6+"</td></tr>";
               mess+="</table>";
               new javapack.Mail().SendMail(sender, "Verification Status", mess,"");
          }
          
          
      }
     
    
    
    }//loop
    //out.print("x="+x);
     if(x==0)
      {
          out.print("<h3 align=center>No Unread Messages Found!!!</h3>");
      }
    /*out.println("<br>Msg Text:<br>");
    String[] arr=sss.split("#*=");   
    for(int k=0;k<arr.length;k++)
    {
        out.print(arr[k]+"<br>");
    }*/
            
            }
            catch (Exception ex)
            {
                //out.println("Exception arise while trying to read mail!");
            }
        } 
        catch (MessagingException e)
        {
          //  out.println("Exception arise while trying to connect to server: " + e.getLocalizedMessage());
           // System.exit(2);
        }
        %>
		<script>
//Using setTimeout to execute a function after 5 seconds.
//setTimeout(function () {
   //Redirect with JavaScript
//   window.location.href= 'testpage.jsp';
//}, 5000);
</script>
</body>
</html>
