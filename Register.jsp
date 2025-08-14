<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<!-- Header with Logo and Line -->
<div class="header">
  <img src="Logo2.jpeg" alt="Logo" class="logo">

  <div class="logo-line"></div>
</div>

<div class="container">
  <h1>Register</h1>
  <form action="RegisterServlet" method="post">
    <div>
      Username: <input type="text" name="username" placeholder="username" required>
    </div>

    <div>
      Email: <input type="email" name="email" placeholder="email" required>
    </div>

    <div>
      Password: <input type="password" name="password" placeholder="password" required>
    </div>

    <div>
      <input type="submit" value="Register">
    </div>
    <p><a href="index.html">Back to home</a></p>
  </form>

  <c:if test="${param.error=='1'}">
    <p style="color: red; font-weight: bold;">Username or Email Already Exists.</p>
  </c:if>
</div>

</body>
</html>
