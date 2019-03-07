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

<table>
<%
String id=request.getParameter("val");
ResultSet r=null;
System.out.println("id hai "+id);
new_database obj=new new_database();
r=obj.get_all_username(id);
while(r.next()){
%><tr>
<td><pre>    <%= r.getString("name") %>    </pre></td>
<td><pre>    <%= r.getString("status") %>    </pre></td>
<td><pre>  <a href="index.jsp?user_id=<%=r.getString("id")%>&chatname=<%=r.getString("name")%>&chatbox='yes'&id=<%=id%>">Start chat</a>   </pre></td>
</tr>
<br>
<% }
try
{
	r.close();
}
catch(Exception e)
{
	
}
%>
</table>

</body>
</html>