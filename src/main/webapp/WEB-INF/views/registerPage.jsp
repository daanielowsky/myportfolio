<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../../media/css/style.css" rel="stylesheet" type="text/css" >
</head>
<body>
<form:form method="post" modelAttribute="userDTO">
    <p>Imię i nazwisko: <form:input path="fullname"/></p>
    <p>Nazwa użytkownika: <form:input path="username"/></p>
    <p>Hasło: <form:password path="password"/></p>
    <p>Potwierdź hasło: <form:password path="confirmedPassword"/></p>
    <form:button>Wyślij</form:button>
</form:form>
</body>
</html>
