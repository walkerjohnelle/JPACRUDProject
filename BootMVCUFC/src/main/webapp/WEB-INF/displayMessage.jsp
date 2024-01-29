<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message Display</title>
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
</head>
<body>
    <header>
        <h1>Delete Fighter</h1>
    </header>

    <main class="container mt-5">
        <c:choose>
            <c:when test="${empty deleteFighter}">
                <div>
                    <c:if test="${not empty message}">
                        <div class="alert alert-success">${message}</div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a
                                href="${pageContext.request.contextPath}/">Home</a></li>
                            <li class="breadcrumb-item"><a
                                href="${pageContext.request.contextPath}/createFighter.do">Create Fighter</a></li>
                        </ol>
                    </nav>
                </div>
            </c:when>

            <c:when test="${not empty deletedFighter}">
                <div class="alert alert-success mt-3" role="alert">
                    Film with ID #${deletedFighter.id} - ${deletedFighter.firstName} ${fighter.lastName} has been successfully deleted.
                </div>
                <a href="${pageContext.request.contextPath}/home.do" class="btn btn-primary mt-3">Return to Home</a>
            </c:when>

            <c:otherwise>
                <div class="alert alert-info mt-3" role="alert">Fighter was not successfully deleted.</div>
            </c:otherwise>
        </c:choose>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
