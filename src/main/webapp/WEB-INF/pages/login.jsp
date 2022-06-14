<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <style>
        <%@include file="css/auth.css" %>
    </style>
</head>

<body>
<div class = "login-container">
<%--    <p title="Login form" class = "login_title">Sign up</p>--%>
    <form action="login/process" method="post">

        <div class="form_input">
            <label for="">Login</label>
            <input type ="text" name="login" class ="form_input"/>
        </div>

        <div class="form_input">
            <label for="">Password</label>
            <input name="password" type="password" class ="form_input" />
            <%--        <div class="error">${error_login_placeholder}</div>--%>
        </div>

<%--        <div class="form_input">--%>
<%--            <label for="">Birthday</label>--%>
<%--            <input name="birthday" type="date" class = "form_input"/>--%>
            <%--        <div class="error">${error_login_placeholder}</div>--%>
<%--        </div>--%>


<%--        <div class="form_input">--%>
<%--            <input type="submit" class ="button" placeholder="Войти"/>--%>
<%--        </div>--%>
  </form>

  <form action="registration" method="get">
     <div class="form_input">
        <button class="registration">registration</button>
     </div>
  </form>
<%--    <img class="image" src="img/intresting.jpg" alt="заставка"/>--%>
  </div>
  </body>
</html>