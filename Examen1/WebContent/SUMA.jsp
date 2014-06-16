<%@ page language="java" contentType="text/html;"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUMA</title>
</head>
<body>
<script>
function validation(){
	var X=document.forms["suma"]["X"].value;
	var Y=document.forms["suma"]["Y"].value;
	if(!X){
		alert("X numero Vacio");
		return false;
	}else if(!Y){
		alert("Y numero Vacio");
		return false;
	}
	return true;
}
</script>
<form name="Suma" method="post" action="Servlet" onsubmit="return validation()">
<table>
<tr>
	<td>X</td>
	<td>
	<input type="text" name="X">
	</td>
	</tr>
	<tr>
	<td>Y</td>
	<td>
	<input type="text" name="Y">
	</td>
	</tr>
	<tr>
	<td>
	<input type="submit" name="calcular" value="Calcular">
	</td>
	</tr>
</table>
</form>
</body>
</html>