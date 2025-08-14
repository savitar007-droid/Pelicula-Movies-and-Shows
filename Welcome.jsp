<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>BookMyShow</title>
  <link rel="stylesheet" href="WelcomeStyle.css">
</head>
<body>

<!-- NAVBAR -->
<div class="navbar">
  
    <img src="Logo2.jpeg" alt="Logo" class="logo">

    <div class="center-buttons">
     
        <input type="text" placeholder="Search" class="search-bar" />

        <a href="MovieListed.jsp">Movies</a>
        <a href="#">Shows</a>
    </div>

    <!-- Account icon on right -->
    <span class="account-icon">👤</span>
</div>

<!-- MAIN CONTENT -->
<%
    response.setHeader("cache-control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");

    String user = (String) session.getAttribute("username");
    if(user == null) {
        response.sendRedirect("Login.jsp");
    }
%>

<div class="container-wrapper">
    <div class="container">
        <h1>Welcome, <%= user %>!</h1>
        <h2>You just Logged in with us!!!!</h2>
        <p>BookMyShow is your one-stop destination for booking movie tickets, concerts, plays, and live events across the country.</p>

        <div class="links">
            You can safely <a href="LogoutServlet">Logout</a> from here 
        </div>
    </div>
</div>

</body>
</html>