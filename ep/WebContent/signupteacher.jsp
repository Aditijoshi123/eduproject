<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="signupactionteacher.jsp" method="post">
      <input type="text" name="name" placeholder="Enter name" required>
        <input type="text" name="desig" placeholder="Enter designation" required>
      <input type="email" name="email" placeholder="Enter email id" required>
      <input type="text" name="phn" placeholder="Enter phone no" required>
      <input type="file" name="pic" placeholder="Enter pic">
      <input type="password" name="pass" placeholder="Enter password" required>
      <input type="password" name="cpass" placeholder="Enter confirm password" required>
      <select name="secques" id="secques">
        <option value="What is the name of your first pet?">What is the name of your first pet?</option>
        <option value="What elementary school did you attend?">What elementary school did you attend?</option>
        <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
        </select>
        <input type="text" name="ans" placeholder="Enter security answer" required>
        <input type="submit" value="signup">
      </form>
      
      <h2><a href="loginteacher.jsp">Login</a></h2>
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