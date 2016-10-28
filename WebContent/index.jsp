<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<!-- <body onload="init();"> -->
<body onload="getUsers();">

<input type="button" name="getJson" value="getJson" onclick="getJson();">

<input type="button" name="getUser" value="getUser" onclick="getUser();">

<div id ="resultDiv">



</div>

<input type="button" name="getUsers" value="getUsers" onclick="getUsers();">

<select id ="userList" name="userList" onchange="selectUser();" size="5">
</select>
<br>

ID:<input type="text" id="id" name="id"> <br>
First Name:<input type="text" id="firstName" name="firstName"> <br>
Last Name:<input type="text" id="lastName" name="lastName"> <br>
Registered:<input type="checkbox" id="registered" name="registered"> <br>
Date of Birth:<input type="text" id="dateOfBirth" name="dateOfBirth"> <br>

</body>
<script src="js/functions.js"></script>

</html>