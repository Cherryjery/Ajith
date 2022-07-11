<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center>
<h1>Ajith Food Shop</h1>
<form action="purchase.do" method="post">
<input type="hidden" name="action" value="purchase">
<input type="hidden" name="shop" value="Food place">
<input type="radio" name="idly" value="rs5">Idly
<input type="radio" name="dosa" value="rs30">Dosa
<input type="radio" name="briyani" value="rs120">Briyani
<input type="submit" value="Next">
</form>
</center>
</body>
</html>