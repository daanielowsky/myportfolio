<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('https://airmario.pl/wp-content/uploads/2015/05/Background-Wallpaper-7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
<div class="container">
    <center><img src="https://i.ibb.co/nkQ4w3K/cooltext352792072079231.png"/>    </center>
    <form:form modelAttribute="form" action="/contact" method="post">
        <div class="form-group">
            <label for="email">E-mail kontaktowy:</label>
            <form:input path="email" id="email" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="company">Nazwa firmy:</label>
            <form:input path="company" id="company" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="position">Stanowisko:</label>
            <form:input path="position" id="position" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="message">Wiadomość:</label>
            <form:textarea path="message" class="form-control" id="message" rows="5"/>
        </div>
        <small style="font-weight: bolder; color: black">Aplikacja wysyła do mnie maila. Postaram się odpowiedzieć najszybciej jak się da.</small><br><br>
        <button type="submit" class="btn btn-default">Wyślij</button>
        <button type="reset" class="btn btn-default">Reset</button><br>
    </form:form>
    <button class="btn btn-default" onclick="javascript:document.location.href='/'">Wróć do strony głównej</button>
</div>
</body>
</html>
