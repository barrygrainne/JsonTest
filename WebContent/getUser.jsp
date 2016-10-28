<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.rc.customer.User, com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.databind.ObjectMapper" %> <!-- this is how you import a class - use , to put in another class-->
<%
	
	User user = new User(100, "Grainne", "Barry", false, "13/01/1970");
	ObjectMapper objectMapper = new ObjectMapper();
	String json = objectMapper.writeValueAsString(user);
%>
<%=json%>

