<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h1>Dodaj użytkownika</h1>
    <a href="${pageContext.request.contextPath}/user/list" class="btn btn-secondary">Lista użytkowników</a>
</div>

<div class="card">
    <div class="card-header">
        <h5 class="card-title mb-0">Nowy użytkownik</h5>
    </div>
    <div class="card-body">
        <form method="post">
            <div class="mb-3">
                <label for="userName" class="form-label">Nazwa użytkownika</label>
                <input type="text" class="form-control" id="userName" name="userName" required>
            </div>
            <div class="mb-3">
                <label for="userEmail" class="form-label">Email</label>
                <input type="email" class="form-control" id="userEmail" name="userEmail" required>
            </div>
            <div class="mb-3">
                <label for="userPassword" class="form-label">Hasło</label>
                <input type="password" class="form-control" id="userPassword" name="userPassword" required>
            </div>
            <button type="submit" class="btn btn-success">Zapisz</button>
        </form>
    </div>
</div>

<%@ include file="/footer.jsp" %>