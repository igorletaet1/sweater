<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Новости</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>
<body>
<div class="header">
    <a href="/test">тест</a>
    <p>${pageContext.request.userPrincipal.name}</p>
    <a href="/logout">Выйти</a>
</div>
<div class="content">
    <h2>Новости <br> Только по учетке.</h2>
    <a href="/">Главная</a>
    <a href="/"></a>
</div>
<div class="footer"></div>
</body>
</html>