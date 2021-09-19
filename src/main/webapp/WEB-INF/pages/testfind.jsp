<%--
  Created by IntelliJ IDEA.
  User: igory
  Date: 08.08.2021
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Изменение заказа</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>
<body>
<div class="header">
    <a href="/test">тест</a>
    <p>${pageContext.request.userPrincipal.name}</p>
    <a href="/logout">Выйти</a>
</div>
<div class="content">
<h1>oooooo</h1>

<c:forEach items="${test}" var="test">
    ${test.id}
    ${test.test}
    <a href="/test?${test.id}"> ${test.last}</a> <br/>
</c:forEach>
</div>
<div class="footer"></div>
</body>
</html>
