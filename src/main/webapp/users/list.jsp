<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h1>Lista użytkowników</h1>
    <a href="${pageContext.request.contextPath}/user/add" class="btn btn-primary">Dodaj użytkownika</a>
</div>

<div class="card">
    <div class="card-header">
        <h5 class="card-title mb-0">Użytkownicy</h5>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nazwa użytkownika</th>
                    <th>Email</th>
                    <th>Akcje</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.userName}</td>
                        <td>${user.email}</td>
                        <td>
                            <a href='${pageContext.request.contextPath}/user/delete?id=${user.id}' class="btn btn-danger btn-sm">Usuń</a>
                            <a href='${pageContext.request.contextPath}/user/edit?id=${user.id}' class="btn btn-warning btn-sm">Edytuj</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>