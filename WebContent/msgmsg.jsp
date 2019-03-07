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

String to=request.getParameter("to");
String typer=request.getParameter("typer");
new_database obj=new new_database();

ResultSet rb=obj.get_msg(typer,to);
System.out.println("jara hai andr"+to+typer);
while(rb.next())
{
	System.out.println("1jara hai andr"+to+typer);
String m=rb.getString("from_");
if(m.equals(typer))
{	
%>
<div align="right">
<span ><b>You:</b></span>
<span><%= rb.getString("msg_") %></span><br>
</div>
<%
}
else
{
	String getname=obj.get_name(to);
%>
<div align="left">
<span><b><%= getname %></b></span>
<span><%= rb.getString("msg_") %></span><br>
</div>
<%} %>


<%
}
%>
</body>
</html>