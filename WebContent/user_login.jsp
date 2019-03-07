<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="user.jsp" method="post">
id: <input name="id" placeholder="ID" maxlength=20 required><br>
pass key: <input type="password" name="pass" placeholder="Pass key" maxlength=20 required><br>
<input type="submit" name="Login" value="Login"><br>
<a href="user_signup.html"><input type="button" name="signup" value="Signup" ></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="user_forgot.html">forgot password</a>
</form>
</center>
</body>
</html>
