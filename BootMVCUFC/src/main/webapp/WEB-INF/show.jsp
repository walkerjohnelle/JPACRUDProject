<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fighter Details</title>
 <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
 <style>
        body {
            background-size: cover;
            color: #fff;
        }

        .container {
            margin-top: 35px;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        .breadcrumb {
            background-color: transparent;
        }

        .breadcrumb-item a:hover {
            background-color: red;
            color: black;
        }

        .custom-link {
            color: white;
        }

        .custom-link:hover {
            background-color: red;
            color: black;
        }
    </style>
</head>
<body
	style="background-image: url('data:image/jpeg;base64,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'); background-size: cover;">
	
	<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
      <c:choose>
		<c:when test="${fighter ne null}">
			<h1>${fighter.firstName} ${fighter.lastName}</h1>
			<p>Age: ${fighter.age }</p>
			<p>Nationality: ${fighter.nationality }</p>
			<p>Fighting Style: ${fighter.fightingStyle }</p>
			<p>Weightclass: ${fighter.weightclass }</p>
			<p>Record (Wins-Losses-Draws):
				(${fighter.wins}-${fighter.losses}-${fighter.draws})</p>
			<p>Knockouts/TKOs: ${fighter.knockouts }</p>
			<p>Submissions: ${fighter.submissions }</p>
			<p>Decisions: ${fighter.decisions }</p>


			<p>
				<a
					href="${pageContext.request.contextPath}/updateFighter.do?id=${fighter.id}"
					class="custom-link">Update Fighter</a>
			</p>

			<p>
				<a
					href="${pageContext.request.contextPath}/deleteFighter.do?id=${fighter.id}"
					class="custom-link">Delete Fighter</a>
			</p>

		</c:when>
		<c:otherwise>
			<p>No Fighter Found</p>
		</c:otherwise>
	</c:choose>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}/" style="color: white">Home</a></li>
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}/createFighter.do"
				style="color: white">Create Fighter</a></li>

		</ol>
	</nav>
</body>
</html>
