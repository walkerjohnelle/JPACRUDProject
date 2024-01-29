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
            position: fixed;
            top: 0;
            right: 0;
            margin: 0;
            padding: 10px;
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
	style="background-image: url('https://images4.alphacoders.com/132/1320808.jpeg'); background-size: cover;">

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



					</c:when>
					<c:otherwise>
						<p>No Fighter Found</p>
					</c:otherwise>
				</c:choose>
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

			</div>

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

	<nav aria-label="breadcrumb" class="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/" style="color: white">Home</a></li>
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/createFighter.do" style="color: white">Create Fighter</a></li>
        </ol>
    </nav>
</body>
</html>
