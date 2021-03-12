<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupactionstudent.jsp" method="post">
     
    <input type="text" name="name" placeholder="Enter name" required>
    

    <select name="class" id="class" required>
 	 <option value="B.Tech. 1st Year">B.Tech. 1st Year</option>
  	 <option value="B.Tech. 2nd Year">B.Tech. 2nd Year</option>
  	 <option value="B.Tech. 3rd Year">B.Tech. 3rd Year</option>
  	 <option value="B.Tech. 4th Year">B.Tech. 4th Year</option>
  	 </select>
    <input type="text" name="rollno" placeholder="Enter Roll No" required>
    <input type="text" name="yoj" placeholder="Enter Year of Joining" required>
    <input type="text" name="phn" placeholder="Enter Contact Number " required>
    <input type="email" name="email" placeholder="Enter Email-id" required>
    <input type="image" name="pic" placeholder="Enter Picture">
    <input type="password" name="pass" placeholder="Enter Password" required>
    <input type="password" name="cpass" placeholder="Confirm Password" required>
    
    <select name="secques" id="secques" required>
 	 <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  	 <option value="What elementary school did you attend?">What elementary school did you attend?</option>
  	 <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  	 
  	 </select>
    
    <input type="text" name="answer" placeholder="Enter Answer" required>
    <input type="submit" value="signup">
    
    </form>
      <h2><a href="loginstudent.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<% 
String msg=request.getParameter("msg");
if("password does not match".equals(msg))
{
%>
<h1>Confirm Password doesn't match with Password</h1>
<% } %>
<%
if("valid".equals(msg))
{
%>
<h1>Successfully Registered</h1>
<% } %> 

<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<% } %>
    <h2>Departmental Education Portal</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>