<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="online_chatting.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
function clearf()
{
document.getElementById('pp').value="";
	}
var request1;
window.onbeforeunload = function(event) {
	
	var v=document.yy.mm.value;
	var url="logout.jsp?id="+v;  
	  
	if(window.XMLHttpRequest){  
	request1=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject){  
	request1=new ActiveXObject("Microsoft.XMLHTTP");  
	}    
	try  
	{  
	request1.onreadystatechange=getInfo;  
	request1.open("GET",url,true);  
	request1.send();  
	}  
	catch(e)  
	{  
	alert("Unable to connect to server");  
	}

	};


$(document).ready(function(){

  ff();
});
</script>


<script>  

var request;  
function ff()
{
	 	var v=document.vv.id.value;  
	var url="show_user.jsp?val="+v;  
	  
	if(window.XMLHttpRequest){  
	request1=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject){  
	request1=new ActiveXObject("Microsoft.XMLHTTP");  
	}    
	try  
	{  
	request1.onreadystatechange=getInfo;  
	request1.open("GET",url,true);  
	request1.send();  
	}  
	catch(e)  
	{  
	alert("Unable to connect to server");  
	}
	}




 function pp()
{
	 	var v=document.vv.id.value;  
		var url="show_user.jsp?val="+v;  
		if(window.XMLHttpRequest){  
		request1=new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject){  
		request1=new ActiveXObject("Microsoft.XMLHTTP");  
		}    
		try  
		{  
		request1.onreadystatechange=getInfo;  
		request1.open("GET",url,true);  
		request1.send();  
		}  
		catch(e)  
		{  
		alert("Unable to connect to server");  
		}
			
	 } 
setInterval(  function(){
	pp();
	
	
		}
		, 1000);


function getInfo(){  
	if(request1.readyState==4){  
	let val=request1.responseText; 
	document.getElementById('show').innerHTML=val;  
	}  
	} 


</script>
</head>
<body>
<%

String id=request.getParameter("id");
new_database obj=new new_database();
String name=obj.get_name(id);
%>
<form name="yy">
<input type="hidden" value='<%=id%>' name="mm">
</form>
<center>
<h2>Online chatting</h2>
<br>
<h3>Online User</h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span> <b> Hiii <%= name  %> </b><a href="logout.jsp">Logout</a> </span>
<form name="vv">
<input type="hidden" name="id" value='<%= id %>' >
</form>
<table>
<tr>
<th>......Username......    </th>
<th>......Status......      </th>
<th>......Action......      </th>
</tr>
</table>
<div id="show"></div>
</div>
</center>
<%
String h=request.getParameter("chatbox");
String chatname=request.getParameter("chatname");
String user_id=request.getParameter("user_id");   // click krke uss bnde ki id 
if(h!=null)
{
	obj.to_online(id); // jisne login kiya hai
%>

<script>
function ppp()
{
	 	var v=document.mi.oi.value;  
		var url="chat.jsp?val="+v;  
		if(window.XMLHttpRequest){  
		request=new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject){  
		request=new ActiveXObject("Microsoft.XMLHTTP");  
		}    
		try  
		{  
		request.onreadystatechange=ge;  
		request.open("GET",url,true);  
		request.send();  
		}  
		catch(e)  
		{  
		alert("Unable to connect to server");  
		}
			
	 }
	 var request2;
function typing()
{
	 	var typer=document.vv.id.value;
	 	var to=document.mi.oi.value;
		var url="typing.jsp?typer="+typer+"&to="+to;  
		if(window.XMLHttpRequest){  
		request2=new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject){  
		request2=new ActiveXObject("Microsoft.XMLHTTP");  
		}    
		try  
		{  
		request2.onreadystatechange=g;  
		request2.open("GET",url,true);  
		request2.send();  
		}  
		catch(e)  
		{  
		alert("Unable to connect to server");  
		}
			
	 }

var request3;
function rr()
{
	 	var v=document.mi.oi.value;  
		var url="no_typing.jsp?val="+v;  
		if(window.XMLHttpRequest){  
		request3=new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject){  
		request3=new ActiveXObject("Microsoft.XMLHTTP");  
		}    
		try  
		{  
		request3.onreadystatechange=gfv;  
		request3.open("GET",url,true);  
		request3.send();  
		}  
		catch(e)  
		{  
		alert("Unable to connect to server");  
		}
			
	 }

var request4;
function put()
{
	var a=document.vv.id.value;
 	var b=document.mi.oi.value;
	var url="done_typing.jsp?a="+a+"&b="+b;   
		if(window.XMLHttpRequest){  
		request4=new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject){  
		request4=new ActiveXObject("Microsoft.XMLHTTP");  
		}    
		try  
		{  
		request4.onreadystatechange=gif;  
		request4.open("GET",url,true);  
		request4.send();  
		}  
		catch(e)  
		{  
		alert("Unable to connect to server");  
		}
			
	 }

setInterval(  function(){
	
	ppp();
	rr();
	
		}
		, 2000);

setInterval(  function(){
	put();
	
		}
		, 2000);
setInterval(  function(){
	bbbbb();
		
			}
			, 2000);

function ge(){  
	if(request.readyState==4){  
	let val1=request.responseText; 
	document.getElementById('chat_').innerHTML=val1;  
	}  
	}
	
function gfv(){}
function g(){  
	if(request2.readyState==4){  
	let val1=request2.responseText; 
	document.getElementById('ch').innerHTML=val1;  
	}  
	}
	
function gif(){   //
	if(request4.readyState==4){  
	let val1=request4.responseText; 
	document.getElementById('typi').innerHTML=val1;  
	}  
	}
function c(){   //
	if(request5.readyState==4){  
	let val1=request5.responseText; 
	document.getElementById('sssssssssss').innerHTML=val1;  
	}  
	}
function chats(){   
	if(request6.readyState==4){  
	let val1=request6.responseText; 
	document.getElementById('show_chats').innerHTML=val1;  
	}  
	}
var request5;
function vvvvv()
{
	var msg=document.getElementById("pp").value;
	var typer=document.vv.id.value;
 	var to=document.mi.oi.value;
 	var url="msg.jsp?msg="+msg+"&typer="+typer+"&to="+to;   
	if(window.XMLHttpRequest){  
	request5=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject){  
	request5=new ActiveXObject("Microsoft.XMLHTTP");  
	}    
	try  
	{  
	request5.onreadystatechange=c;  
	request5.open("GET",url,true);  
	request5.send();  
	}  
	catch(e)  
	{  
	alert("Unable to connect to server");  
	}
	
	}
	
var request6;
function bbbbb()
{
	
	var msg=document.getElementById("pp").value;
	var typer=document.vv.id.value;
 	var to=document.mi.oi.value;
 	var url="msgmsg.jsp?typer="+typer+"&to="+to;   
	if(window.XMLHttpRequest){  
	request6=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject){  
	request6=new ActiveXObject("Microsoft.XMLHTTP");  
	}    
	try  
	{  
	request6.onreadystatechange=chats;  
	request6.open("GET",url,true);  
	request6.send();  
	}  
	catch(e)  
	{  
	alert("Unable to connect to server");  
	}
	
	}

</script>

<form action="" name="mi">     
<input type="hidden" name="oi" value=<%=user_id%>>
</form>

<span><%=chatname %></span>&nbsp;&nbsp;&nbsp;
<span  id="chat_"></span>&nbsp;&nbsp;&nbsp;<span  id="typi"></span>
<br>
<div id="show_chats" style="height:275px; width:350px; border:1px solid #ccc;  margin-bottom:24px; padding:16px;">
</div>
<textarea id="pp" rows="3" cols="15"  onkeyup="typing()" onkeydown="typing()"></textarea><br>
<input type="button" onclick="vvvvv(); bbbbb(); javascript:clearf();" value="send">
<%
}
%>
</body>
</html>