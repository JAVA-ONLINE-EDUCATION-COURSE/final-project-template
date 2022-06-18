</html><%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<p title="Login form" class="login_title">Вход</p>
<form id="input" action="${pageContext.request.contextPath}/login/process" modalAttribute="user"  method="get">
    <div class="form_input">
        <label for="">Логин</label>
        <input type="text" name="login" class="form_input" path="login"/>
    </div>

    <div class="form_input">
        <label for="">Password</label>
        <input name="password" type="password" class="form_input" path="password"/>
        <%--                    <div class="error">${error_login_placeholder}</div>--%>
    </div>

    <div class="form_input">
        <input type="submit" class="button" placeholder="Войти"/>
    </div>
</form>
</body>
</html>