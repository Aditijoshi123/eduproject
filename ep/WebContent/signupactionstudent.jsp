<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%

String name=request.getParameter("name");
String Class=request.getParameter("class");
String rollno=request.getParameter("rollno");
String yoj=request.getParameter("yoj");
String email=request.getParameter("email");
String phn=request.getParameter("phn");
String pic=request.getParameter("pic");
String pass=request.getParameter("pass");
String cpass=request.getParameter("cpass");
String secques=request.getParameter("secques");
String answer=request.getParameter("answer");


if(cpass.equals(pass)==false)
{
	response.sendRedirect("signupstudent.jsp?msg=password does not match");
}

else
{
try{
	Connection con=ConnectionProvider.getcon();
	PreparedStatement ps=con.prepareStatement("insert into student(name,class,roll_no,yoj,email,phn,pic,pass,sec_ques,sec_ans) values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, Class);
	ps.setString(3, rollno);
	ps.setString(4, yoj);
	ps.setString(5, email);
	ps.setString(6, phn);
	ps.setString(7, pic);
	ps.setString(8, pass);
	ps.setString(9, secques);
	ps.setString(10, answer);
	ps.executeUpdate();
	response.sendRedirect("signupstudent.jsp?msg=valid");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signupstudent.jsp?msg=invalid");
}
}
%>