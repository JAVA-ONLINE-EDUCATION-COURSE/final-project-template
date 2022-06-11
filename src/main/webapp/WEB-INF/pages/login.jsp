<jsp:useBean id="error_login_placeholder" scope="request" type=""/>
<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
<<<<<<< HEAD
    <link rel="stylesheet" type="text/css" href="css/auth.css">
  </head>

  <body>
    <form action="login/process" method="post">
      <p title="Login form">Sign up</p>
      <div class="form-input">
=======
    <link href="css/auth.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="form" action="login/process" method="post>
      <h1>Вход</h1>
      <div class="group">
>>>>>>> 2e295d2e8783b860def15bdd53bffc12976ddf32
        <label for="">Login</label>
          <input type="text" placeholder="Логин" name="login">
       </div>

<<<<<<< HEAD
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
=======
      <div class="group">
         <input type="password" name="password" placeholder="Пароль"></div>
      <div class="error">${error_login_placeholder}</div>
      <div class="group">
      <input type="submit" class='button' placeholder="Войти">
      </div>
      <script src="js/auth.js" async></script>
</div>
<img class="image" src="img/intresting.jpg" alt="заставка">
>>>>>>> 2e295d2e8783b860def15bdd53bffc12976ddf32

</body>
</html>
