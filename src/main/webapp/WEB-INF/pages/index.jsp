<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
<%--    <script type="text/javascript" src="${contextPath}/resources/js/script.js" />--%>
    <script type="text/javascript" src="../resources/js/script.js"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js%22%3E"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js%22%3E"></script>
</head>
<body >

<div class="con">
    <h3>${pageContext.request.userPrincipal.name}</h3>
    <sec:authorize access="!isAuthenticated()">
        <h4><a href="/login">Войти</a></h4>
        <h4><a href="/registration">Зарегистрироваться</a></h4>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <h4><a href="/logout">Выйти</a></h4>
    </sec:authorize>
    <h4><a href="/news">Новости (только пользователь)</a></h4>
    <h4><a href="/admin">Пользователи (только админ)</a></h4>
</div>

</body>

<script>
     function fff() {
        alert('Спасибо');
    };
</script>
</html>