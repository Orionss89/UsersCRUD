<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>UsersCRUD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/user/list">UsersCRUD</a>
        <div class="navbar-nav">
            <a class="nav-link" href="${pageContext.request.contextPath}/user/list">Lista użytkowników</a>
            <a class="nav-link" href="${pageContext.request.contextPath}/user/add">Dodaj użytkownika</a>
        </div>
    </div>
</nav>
<div class="container mt-4">