<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h1>Edytuj użytkownika</h1>
    <a href="${pageContext.request.contextPath}/user/list" class="btn btn-secondary">Lista użytkowników</a>
</div>

<div class="card">
    <div class="card-header">
        <h5 class="card-title mb-0">Edycja użytkownika</h5>
    </div>
    <div class="card-body">
        <form method="post">
            <input type="hidden" name="id" value="${user.id}"/>
            <div class="mb-3">
                <label for="userName" class="form-label">Nazwa użytkownika</label>
                <input type="text" class="form-control" id="userName" name="userName" value="${user.userName}" required>
            </div>
            <div class="mb-3">
                <label for="userEmail" class="form-label">Email</label>
                <input type="email" class="form-control" id="userEmail" name="userEmail" value="${user.email}" required>
            </div>
            <div class="mb-3">
                <label for="userPassword" class="form-label">Hasło</label>
                <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Wpisz nowe hasło">
            </div>
            <button type="submit" class="btn btn-warning">Zaktualizuj</button>
        </form>
    </div>
</div>

<%@ include file="/footer.jsp" %>