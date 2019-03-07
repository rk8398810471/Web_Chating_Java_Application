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
new_database obj=new new_database();
String id=request.getParameter("id");
obj.to_offline(id);
System.out.println(id+" chakde");
response.sendRedirect("user_login.jsp");
%>
</body>
</html>