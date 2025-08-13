<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header">
        <img src="Logo2.jpeg" alt="Logo" class="logo">
        <a href="AboutUs.html" class="AboutUs-button">About Us</a>
        <div class="logo-line"></div>
    </div>

    <div class="container">
        <h1>Login</h1>
        <form action="LoginServlet" method="post">
            <div>
                Username:<input type="text" name="username" placeholder="username" required>
            </div>

            <div>
                Password:<input type="password" name="password" placeholder="password" required>
            </div>

            <div>
                <input type="submit" value="Login">
            </div>
        </form>
        <p><a href="index.html">Back to home</a></p>
    </div>

    <c:if test="${param.error=='1'}">
        <p style="color:red; font-weight: bold;">Invalid username or password.</p>
    </c:if>

    <c:if test="${param.registration=='Success'}">
        <p style="color:green; font-weight: bold;">User Successfully registered. You may login.</p>
    </c:if>
</body>
</html>
