<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link href="css/auth.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="form" action="login/process" method="post>
      <h1>Вход</h1>
      <div class="group">
        <label for="">Login</label>
          <input type="text" placeholder="Логин" name="login">
       </div>

      <div class="group">
         <input type="password" name="password" placeholder="Пароль"></div>
      <div class="error">${error_login_placeholder}</div>
      <div class="group">
      <input type="submit" class='button' placeholder="Войти">
      </div>
      <script src="js/auth.js" async></script>
</div>
<img class="image" src="img/intresting.jpg" alt="заставка">

</body>
</html>
