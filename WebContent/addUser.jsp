<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%@ page import="com.rc.customer.*" %> 
 <% 
 String firstName = "";
 String lastName = "";
 boolean registered = false;
 String dateOfBirth = "";
 boolean agreeTermsAndConditions = false;
 boolean valid = true;
 String validationMessage = "";
 boolean finished = false;
 String firstNameStyle = "";
 String lastNameStyle = "";
 String dateOfBirthStyle = "";
 String agreeTermsAndConditionsStyle ="";
 
 
 if(request.getParameter("firstName") != null) {
	 // form has been submitted
	 
	 // read the parameters
	 firstName = request.getParameter("firstName"); 
	 lastName = request.getParameter("lastName");
	 registered = request.getParameter("registered") != null; // means ticked the box
	 dateOfBirth = request.getParameter("dateOfBirth");
	 agreeTermsAndConditions = request.getParameter("agreeTermsAndConditions") != null;
	 
	 // validate the parameters - old way of doing validation
	 if (firstName == null || firstName.equals("")) {
		 valid = false;
		 validationMessage += "Please fill in firstName<br>";
		 firstNameStyle = "formError";
		 // problem with firstname
	 }
	 if (lastName == null || lastName.equals("")) {
		 valid = false;
		 validationMessage += "Please fill in lastName<br>";
		 lastNameStyle = "formError";
		
		 // problem with lastname
	 }
	 if (dateOfBirth == null || dateOfBirth.equals("")) {
		 valid = false;
		 validationMessage += "Please fill in dateOfBirth<br>";
		 dateOfBirthStyle = "formError";
		 // problem with date of birth
	 }
	
	 if(!agreeTermsAndConditions) {
		 valid = false;
		 validationMessage += "You must agree to Terms and Conditions";
		 agreeTermsAndConditionsStyle = "formError";
	 }
	
	 if (valid) {
		 // process the request
		 UserDB userDB = new UserDB();
		 
		 User user = new User(-1, firstName, lastName,
				 		registered, dateOfBirth);
		 
		 userDB.create(user);
		 
		 userDB.close();
	
		 finished = true; //everything ok if get to here
		  
	 } 
	 
 } else{
	 //this is the first call
 }
 %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	.formError {
	background-color:red;
	}
	
</style>
</head>
<body>
<% if (!finished) { %>
<h1>Add User</h1>

<%=validationMessage%>


<form action="addUser.jsp" method="get">


Firstname:<input type="text" name="firstName" id="firstName" value="<%=firstName%>" class="<%=firstNameStyle%>" required>*<br>

Lastname:<input type="text" name="lastName" id="lastName" value="<%=lastName%>"class="<%=lastNameStyle%>" required> *<br>

Registered:<input type="checkbox" name="registered" id="registered" <%=registered ? "checked":""%>><br>

Date of birth:<input type="date" name="dateOfBirth" id="dateOfBirth" value="<%=dateOfBirth%>"class="<%=dateOfBirthStyle%>" required>*<br>
<br>
<div class="<%=agreeTermsAndConditionsStyle%>">

I agree to the Terms and Conditions:  </div>
<input type="checkbox" name="agreeTermsAndConditions" id = "agreeTermsAndConditions" required><br>

<input type="submit" name="submit" id = "submit" value="submit">
</form>
<% } else { %>
<h1> User Added Successfully</h1>
<a href="users.jsp">Home</a><br>


<% } %>
</body>
</html>