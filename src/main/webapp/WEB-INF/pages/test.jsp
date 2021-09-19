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
    <script type="text/javascript" src="../resources/js/script.js"/>
    <script type="text/javascript" src="../resources/js/script.js">
        <script type="text/javascript" src="../resources/js/script.js"/>
        <script type="text/javascript" src="${contextPath}/resources/js/script.js">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js%22%3E"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js%22%3E"></script>
</head>
<body>
<div class="header">
    <a href="/test">тест</a>
    <p>${pageContext.request.userPrincipal.name}</p>
    <a href="/logout">Выйти</a>
</div>
<div class="content">
<h1>oooooo</h1>

<form method="post">
    <input name="id"   type="text" required>
    <input name="name" type="text" >
    <input name="last" type="text" >
    <input type="submit">
</form>
    <p>${error}</p>
    <p id="yes">${yes}</p>
    <p id="no">${no}</p>

    <div class="block1">д</div>
    <div class="block2">а</div>
    <div class="flex">
    <div class="block3"></div>
    <div class="block4"></div>
    </div>
</div>
<div class="footer"></div>
</body>
<script>
    var bb = document.getElementById('yes');
    if(bb.innerHTML == 'yes'){
        setTimeout(yes, 2000);
    }
    var ss = document.getElementById('no');
    if(ss.innerHTML == 'no'){
        setTimeout(no, 2000);
    }
    function yes(){
        document.querySelector('.block1').style.visibility = 'visible';
        document.querySelector('.block1').style.top = '0px';
        document.querySelector('.block1').style.position = 'relative';
        document.querySelector('.block2').style.visibility = 'visible';
        document.querySelector('.block2').style.top = '0px';
        document.querySelector('.block2').style.position = 'relative';
        setTimeout(redirectYes, 7000);
    }
    function no(){
        document.querySelector('.block3').style.visibility = 'visible';
        document.querySelector('.block3').style.left = '0px';
        document.querySelector('.block3').style.position = 'relative';
        document.querySelector('.block4').style.visibility = 'visible';
        document.querySelector('.block4').style.right = '0px';
        document.querySelector('.block4').style.position = 'relative';
        setTimeout(redirectNo, 7000);
    }

    function redirectYes(){
        document.location.href = '/success';
    };
    function redirectNo(){
        document.location.href = '/fail';
    };
</script>
</html>
