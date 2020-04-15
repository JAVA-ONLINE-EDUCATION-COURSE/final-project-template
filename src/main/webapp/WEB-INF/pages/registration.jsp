<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="cp1251" %>
<!DOCTYPE html>
<html>
<head>
    <title>�����������</title>
    <link rel="shortcut icon" href="/resources/images/logo.png">
    <link rel="stylesheet" contentType="text/css" href="/resources/css/style.css" >
    <link rel="stylesheet" contentType="text/css" href="/resources/css/data-entry-form-style.css" >
</head>
<body>

<header>
    <h1>���������</h1>
</header>

<section>
    <article>

        <form class="data-entry-form" action="/registration/proceed" method="post">

            <h3>�����������</h3>
            <hr>

            <div class="area">
                <label>���:</label><br>
                <input name="fullName" class="text-box" size="18" required maxlength="50">
            </div>

            <div class="area">
                <label>���� ��������:</label><br>
                <input name="dateOfBirthday" class="text-box" size="18" required type="date">
            </div>

            <div class="area">
                <label>�����:</label><br>
                <input name="login" class="text-box" size="18" required maxlength="30"
                title="����� ������ ��������� ��������� ����� �/��� �����. ����������� ����� ������ - 5 ��������.">
                <div class="error">${error_login_placeholder}</div>
            </div>

            <div class="area">
                <label>������:</label><br>
                <input name="password" class="text-box" type="password" class="text" required
                title="������ ������ ��������� ��������� ����� �/��� �����. ����������� ����� ������ - 5 ��������.">
                <div class="error">${error_password_placeholder}</div>
            </div>

            <div class="area">
                <label>����������� ������:</label><br>
                <input name="passwordConfirm" class="text-box" type="password" class="text" required
                title="����������� ������">
                <div class="error">${error_passwordConfirm_placeholder}</div>
            </div>

            <div class="area">
                <input type="submit" class="button left-button" value="������������������">
                <a href="/login"><input type="button" class="button" value="�����"></a>
            </div>

        </form>

    </article>
</section>

<footer>
    <p>Powered by <i>Ilnar Khafizov</i> | 2020 | <i>Izhevsk, Russia</i></p>
</footer>

</body>
</html>
