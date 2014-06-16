<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html> 
<head> 
</head>
<body>
<BODY BGCOLOR="gray">

<%String X = request.getParameter("a");
String Y = request.getParameter("b"); 
String op =request.getParameter("oper");%>
<div id="cuerpo">
<form action="" mehotd="GET">
<div id="tuno">
<table align="center">


<tr>

<td>
<label>X</label>
</td>
<td>
<input type="text" value="<%=(X!=null)?X:0 %>" name="a">
</td>
</tr>
<tr> 
<td>
<label>Y</label>
</td>
<td>
<input type="text" value="<%=(Y!=null)?Y:0 %>" name="b">
</td>


</tr>




<tr>
<td>
<input type="submit" value="*" name="oper" />
</td>
</tr>
</table>
</form>
</div>
</table>


<%
try
{
if(X!=null || Y!=null)
{

double X1=Double.parseDouble(X);
double Y2=Double.parseDouble(Y);



if(op.equals("*"))
{
double RES=X1*Y2;
out.print("<h1>"+X1+"*"+Y2+"="+ RES + "</h1>");
}
}
}
catch(java.lang.NumberFormatException error)
{
	out.print("<div id=\"error\"><h1>Solo Numeros</h1></div>"); 
}


%>


</body>
</html>