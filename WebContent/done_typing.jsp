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
String l="yes";
String a=request.getParameter("a");
String b=request.getParameter("b");
new_database obj=new new_database();
String check=obj.done_typing(b,a);
if(check.equals(l))
{
%>
<b>Typing...</b>
<%
}else{
%>

<%} %>
</body>
</html>