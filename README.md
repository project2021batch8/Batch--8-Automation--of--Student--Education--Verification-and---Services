# Batch--8-Automation--of--Student--Education--Verification-and---Services

# Project Title

AUTOMATION OF STUDENT EDUCATION VERIFICATION AND SERVICES


# About the Project

Rendering a Bonafide certificate, Letter of Recommendation and verifying a student's background is an obligatory activity of every college. However, well established institutions at times may find it tedious to issue them when the procedure is extensive or when there is a substantial number of applicants.
The proposed system is completely automated which decreases the time consumption and manual tasks performed during background verification and while issuing a Bonafide or an LOR. Using this web application, the student authentication process, request approval and providing letter can be done on a single platform from any place making it quickly accessible. As an added feature, a unique software is developed that automatically parses the mail contents sent by a background verifier and matches it with the student database to find if the information is genuine or not with an automated reply email.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.


### Prerequisites

Hardware Requirements

```
Hard Disk: 80 GB and above
RAM:4GB and above
Processor: P IV and above

```
Software Requirements

```
Windows 7 and above(64 bit)
JDK 1.8
Tomcat 8.5
MySQL 5.0
NetBeans
```


### Installation

WEBSITE
1. Extract all the files from the folder.
2. To install the latest version of jdk, run jdk 8 from the extracted folder ***java 8 jdk***
3. Goto MySQL, open the text file and download the contents from Google drive. Then, Goto **MySql 5 --> mysql-5.0.24a-win32** and run ***Setup***
4. To install MySql Front, Goto **MySql 5 --> MySQL-Front_Setup5.1.FREEWARE** and run ***MySQL-Front_Setup5.1.FREEWARE***
5. Goto *Tomcat 7.0* and run the file ***apache-tomcat-7.0.11*** (make sure to mark all the checkboxes during installation)
6. Set path and environment vaiable for the jdk installed. 
7. Extractopy ***D*** folder and paste it in **C:\Apache\Tomcat7.0\webapps**
8. Extract and copy **BG*** folder and paste it in **C:\Apache\Tomcat7.0\webapps**
9. Open **MySQL Front** and login.
10. Next, right click on *localhost -> Import -> SQL File* and Import from ***resources\autosystemfinal***
11. Click ***Refresh*** to view the imported data.
12. To create a new Database, first copy the text file contents from **resources\auto**
13. Goto MySQL Front, right click on ***localhost -> New -> Database*** and click on ***SQL Editor,*** paste the contents and run it.

BACKGROUND VERIFICATION SOFTWARE
1. Install Netbeans and run it.
2. Extract the code and load it into the netbeans software.
3. Run it to view the result.


## Deployment

1. Navigate to ***Apache/Tomcat7.0/bin*** and run **tomcat7** by clicking on it.
2. Navigate to <http://localhost:8888/> in *Chrome* to run the program.
3. Login by clicking ***Manager App*** button and open */BG* for running Background verification Software
4. For the ***Web Application for Bonafide and LOR***, open */D*


## Functionality of Modules 

###For Bonafide and LOR Request Website,

#### Admin
  - Login
  - Accept/Decline the account registration made by the student
  - View the list of students and staffs registered in the portal

#### HOD
  - Login
  - Accept/Decline the request for Bonafide raised by the student
  - Edit the body contents of the LOR and send it to student
  - View the list of students and staffs registered in the portal

#### Staff
  - Register/ Login
  - Accept/Decline the request for LOR Raised by the student
  - Edit the body contents of the LOR and send it to student

#### Student
  - Register/ Login
  - View the list of staffs registered in the portal
  - Request for Bonafide/LOR
  - Download the Bonafide/LOR obtained from the faculty

 

## End to end tests breakdown

Student/Staff Registration

```
Click on Register in Homepage
Choose if you want to login as a Student/Staff
Fill in the required details
Click on Register button

Note: Login can be done ony after admin's approval.
```
Registration Authentication

```
Login as Admin by filling in the credetials
To authenticate staff login, Click on ''View Staff'' and click Accept/Decline
To authenticate student login, Click on ''View Student'' and click Accept/Decline
```

To request for Bonafide

```
Login into the portal by giving the credentials
click on the button named Bonafide Certificate
Select the reason for applying for bonafide
Click on Submit
```
To request for LOR

```
Login into the portal by giving the credentials
click on the button named LOR Certificate
Fill in the body of the letter
Append your signature in Digital format
Click on Submit
```
Accept/Decline Bonafide Request

```
Login as HOD by giving the credentials
Click on "Inbox"
Click Accept/Decline to Approve/Decline the request for Bonafide
Append the Date of issuing the Bonafide and Digital Signature
Click "Save"
```
Accept/Decline LOR Request

```
Login as a Staff by giving the credentials
Click on "Inbox"
Click Accept/Decline to Approve/Decline the request for LOR
Append the Body Content if any changes are supposed to be made and attach the Digital Signature
Click "Save"
```


## Built With

* [Java]<https://docs.oracle.com/en/java/> - Programming Language
* [Collections]<https://docs.oracle.com/javase/8/docs/technotes/guides/collections/overview.html> - The core framework used
* [JSP, Servlet]<https://docs.oracle.com/javaee/6/tutorial/doc/bnafd.html> - J2EE
* [HTML 5, CSS 3]<https://developer.mozilla.org/en-US/docs/Web/HTML> <https://developer.mozilla.org/en-US/docs/Web/CSS> - For Web Designing
* [JQuery]<https://api.jquery.com/>) - Used to generate Animation Effect
* [JavaScript]<https://developer.mozilla.org/en-US/docs/Web/JavaScript> - For Scripting
* [Bootstrap 3]<https://getbootstrap.com/docs/3.3/> - Used for FrontEnd Framework



## References

<https://ieeexplore.ieee.org/document/573971>
<https://ieeexplore.ieee.org/document/5616659>
<https://docs.oracle.com/javaee/7/api/javax/mail/package-summary.html>
<https://docs.oracle.com/javaee/7/api/javax/servlet/package-summary.html>


## Contact

* H. Pooja 
  - Register Number: 211417104184

* Priyadarshini Venkatesan 
  - Register Number: 211417104201

* S.Sherline Calista 
  - Register Number: 211417104256
