<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="online_chatting.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%
String user=request.getParameter("id");
String pass=request.getParameter("pass");
response.setContentType("text/html");
//System.out.println(name+" "+id+" "+pass+" "+pet);
new_database obj=new new_database();
boolean check=obj.already_id_presentwithpass(user,pass); 
if(check==true)
{
	HttpSession s=request.getSession();
	s.setAttribute("id", user);
	obj.status_update_online(user);
	 RequestDispatcher rd=request.getRequestDispatcher("index.jsp?id="+user);  
     rd.forward(request, response);
}
else
{
	
	out.println("invalid Login details ...Try again");
	 RequestDispatcher rd=request.getRequestDispatcher("user_login.jsp");  
     rd.include(request, response);
}
%>

</body>
</html>