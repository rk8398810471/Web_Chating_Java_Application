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
String typer=request.getParameter("typer");
String to=request.getParameter("to");
new_database obj=new new_database();
obj.yes_typing(typer,to);
%>
<p>You are typing</p>
</body>
</html>