<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UsersCRUD - Strona główna</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3 class="text-center">UsersCRUD</h3>
                </div>
                <div class="card-body text-center">
                    <p class="lead">Aplikacja do zarządzania użytkownikami</p>
                    <a href="${pageContext.request.contextPath}/user/list" class="btn btn-primary btn-lg">Przejdź do aplikacji</a>

                    <hr>

                    <h5>Test połączenia z bazą:</h5>
                    <%
                        try {
                            utils.DbUtil.getConnection();
                            out.println("<div class='alert alert-success'> Połączenie z bazą danych WORKS!</div>");
                        } catch (Exception e) {
                            out.println("<div class='alert alert-danger'> Błąd połączenia: " + e.getMessage() + "</div>");
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>