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
<p title="Login form" class="login_title">Регистрация</p>
<form id="input" action="registration" modalAttribute="user" method="get">
<%--<form id="input" action="${pageContext.request.contextPath}/login/process" modalAttribute="user"  method="post">--%>
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
    <label for="">День рождения</label>
    <input name="birthday" type="date" class="form_input" path="birthday"/>
    <div class="error">${error_login_placeholder}</div>
  </div>

  <div class="form_input">
    <label for="">Роль</label>
    <input name="role" class="form_input" path="role"/>
<%--    <form:select name="role" type="text" class="form_input" path="role"/>--%>
<%--    <form:option value="Custom">Custom</form:option>--%>
<%--    <form:option value="Administrator">Administrator</form:option>--%>
    <div class="error">${error_login_placeholder}</div>
  </div>


<%--  <div class="form_input">--%>
<%--    <input type="submit" class="button" placeholder="Войти"/>--%>
<%--  </div>--%>
<%--</form>--%>


  <div class="form_registration">
    <button class="button" placeholder="Регистрация">Регистрация</button>
  </div>
</form>
    <img src="${pageContext.request.contextPath}/img/intresting.jpg" class="image" alt="interest"/>

</body>
</html>