<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Fighter to Rankings</title>
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
</head>
<body>
<c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>
    <div class="container mt-5">
        <h1>Add New Fighter to Rankings</h1>

        <form action="createFighter.do" method="POST" name="UfcFighters" class="mb-5">
           <div class="mb-3">
                <label for="firstName" class="form-label">Fighter First Name:</label>
                <input type="text" name="firstName" class="form-control" value="${fighter.firstName }"required />
            </div>

            <div class="mb-3">
                <label for="lastName" class="form-label">Fighter Last Name:</label>
                <input type="text" name="lastName" class="form-control" value = "${fighter.lastName }"required />
            </div>

            <div class="mb-3">
                <label for="age" class="form-label">Fighter Age:</label>
                <input type="number" name="age" class="form-control" value ="${fighter.age }"required min="0" />
            </div>

            <div class="mb-3">
                <label for="weightclass" class="form-label">Fighter Weightclass:</label>
                <select name="weightclass" class="form-select" value ="${fighter.weightclass }"required>
                    <option value="Flyweight">Flyweight</option>
                    <option value="Bantamweight">Bantamweight</option>
                    <option value="Featherweight">Featherweight</option>
                    <option value="Lightweight">Lightweight</option>
                    <option value="Welterweight">Welterweight</option>
                    <option value="Middleweight">Middleweight</option>
                    <option value="Light-Heavyweight">Light-Heavyweight</option>
                    <option value="Heavyweight">Heavyweight</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="nationality" class="form-label">Fighter Nationality:</label>
                <input type="text" name="nationality" class="form-control" value ="${fighter.nationality }"required />
            </div>

            <div class="mb-3">
                <label for="fightingStyle" class="form-label">Fighter Fighting Style:</label>
                <input type="text" name="fightingStyle" class="form-control" value ="${fighter.fightingStyle }"required />
            </div>

            <div class="mb-3">
                <label>Fighter Record:</label>
                Wins: <input type="number" name="wins" value ="${fighter.wins }style="width: 50px;" min="0" />
                Losses: <input type="number" name="losses" value ="${fighter.losses }style="width: 50px;" min="0" />
                Draws: <input type="number" name="draws" value ="${fighter.draws }style="width: 50px;" min="0" />
            </div>

            <div class="mb-3">
                <label>Fighter Wins By:</label>
                Knockouts: <input type="number" name="knockouts" value ="${fighter.knockouts }"style="width: 50px;"min="0" />
                Submissions: <input type="number" name="submissions" value ="${fighter.submissions }"style="width: 50px;"min="0" />
                Decisions: <input type="number" name="decisions" value ="${fighter.decisions }"style="width: 50px;"min="0" />
            </div>

			<div class="mb-3">
			    Current Champion:
			    <label><input type="radio" name="champion" value="true" ${fighter.champion ? 'checked' : ''} /> Yes</label>
			    <label><input type="radio" name="champion" value="false" ${!fighter.champion ? 'checked' : ''} /> No</label>
			</div>

           <div class="mb-3">
			    Active:
			    <label><input type="radio" name="active" value="true" ${fighter.active ? 'checked' : ''} /> Yes</label>
			    <label><input type="radio" name="active" value="false" ${!fighter.active ? 'checked' : ''} /> No</label>
			</div>

            <button type="submit" class="btn btn-primary">Create New Fighter</button>
        </form>
        
        
		<c:if test="${not empty message}">
			<div class="alert alert-success" role="alert">${message}</div>
		</c:if>

		<c:if test="${not empty error}">
			<div class="alert alert-danger" role="alert">${error}</div>
		</c:if>
	</div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
        </ol>
    </nav>
        <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
