<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <style>
        <%@include file="css/auth.css" %>
    </style>
</head>

<body>
<p title="Login form" class="login_title">Sign up</p>
<form id="input_login" action="${pageContext.request.contextPath}/login/process" modalAttribute="user"  method="post">
    <div class="form_input_login">
        <label for="">Логин</label>
        <input type="text" name="login" class="form_input" path="login"/>
    </div>

    <div class="form_input_login">
        <label for="">Password</label>
        <input name="password" type="password" class="form_input" path="password"/>
        <%--                    <div class="error">${error_login_placeholder}</div>--%>
    </div>

    <div class="form_input_login">
        <input type="submit" class="button_login" placeholder="Войти"/>
    </div>
</form>
<form id="registration_login" action="registration" method="get">
<div class="form_registration_login">
    <button class="button_login">Регистрация</button>
</div>
</body>
</html>