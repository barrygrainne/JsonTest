<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.rc.customer.User, com.fasterxml.jackson.databind.ObjectMapper" %> 
<%
	User[] users = {
			new User(100, "Grainne", "Barry", false, "13/01/1970"),
			new User(101, "Grainne", "Mc", false, "13/01/1970"),
			new User(102, "Grainne", "M", false, "13/01/1970")
			
	};

	ObjectMapper objectMapper = new ObjectMapper();
	String json = objectMapper.writeValueAsString(users);
%>
<%=json%>

