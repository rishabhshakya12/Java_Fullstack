<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="indexStyle.css">
</head>
<body>
<%
	//Retrieve the session object
	HttpSession session1 = request.getSession(false);
	
	// Check if the session is not null and the username attribute is set
	if (session != null && session1.getAttribute("username") != null) {
	    // Get the username from the session
	    String username = (String) session1.getAttribute("username");
%>
 <div class="container">
        <h1 style="color: lime;">HURRAY! You are Loged in, <%= username%>!</h1>
        <p>We're delighted to have you on my platform. 🌟</p>
        <h3>Explore, learn, and connect with this website made by me! 🚀</h3>
        <p>Feel free to stay as long as you like, and when you're ready,</p> 
        you can <a href="logout.jsp">LOGOUT</a> securely.
    </div>
    
 <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
 %>    

</body>
</html>