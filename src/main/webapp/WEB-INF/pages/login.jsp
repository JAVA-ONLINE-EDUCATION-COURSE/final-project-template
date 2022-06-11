<jsp:useBean id="error_login_placeholder" scope="request" type=""/>
<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link rel="stylesheet" type="text/css" href="css/auth.css">
  </head>

  <body>
    <form action="login/process" method="post">
      <p title="Login form">Sign up</p>
      <div class="form-input">
        <label for="">Login</label>
        <input name="login" />
      </div>

      <div class="form-input">
        <label for="">Password</label>
        <input name="password" type="password" />
        <div class="error">${error_login_placeholder}</div>
      </div>


      <div class="form-input">
        <button class="button">Confirm</button>
      </div>
    </form>

    <form action="registration" method="get">
      <div>
        <button class="button">registration</button>
      </div>
      img class="image" src="../img/lo_files/заставка.jpg" alt="заставка">
    </form>

  </body>
</html>
