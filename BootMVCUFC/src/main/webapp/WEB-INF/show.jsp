<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fighter Details</title>
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
</head>
<body>
    <c:choose>
        <c:when test="${fighter ne null}">
            <h1>${fighter.firstName} ${fighter.lastName}</h1>
            <p>Age: ${fighter.age }</p>
            <p>Nationality: ${fighter.nationality }</p>
            <p>Fighting Style: ${fighter.fightingStyle }</p>
            <p>Weightclass: ${fighter.weightclass }</p>
            <p>Record (Wins-Losses-Draws): (${fighter.wins}-${fighter.losses}-${fighter.draws})</p>
            <p>Knockouts/TKOs: ${fighter.knockouts }</p>
            <p>Submissions: ${fighter.submissions }</p>
            <p>Decisions: ${fighter.decisions }</p>

            <p><a href="${pageContext.request.contextPath}/updateFighter.do?id=${fighter.id}">Update Fighter</a></p>
            <a href="${pageContext.request.contextPath}/deleteFighter.do?id=${fighter.id}">Delete Fighter</a>
            
        </c:when>
        <c:otherwise>
            <p>No Fighter Found</p>
        </c:otherwise>
    </c:choose>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/createFighter.do">Create Fighter</a></li>
        </ol>
    </nav>
</body>
</html>
