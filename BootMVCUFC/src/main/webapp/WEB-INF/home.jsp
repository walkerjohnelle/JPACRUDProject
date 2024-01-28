<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome To The UFC Pound For Pound Ranking</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>
.fighter-list {
	display: none;
}
</style>
</head>
<body>
	<h1>UFC Pound For Pound Ranking</h1>

	<form action="getFighter.do" method="GET">
		Fighter: <input type="text" name="id" />
		<button type="submit" class="btn btn-primary">Show Fighter</button>

	</form>

	<a href="#" onclick="toggleFighterList()">Show All Fighters</a>

	<ul class="fighter-list">
		<c:forEach var="fighter" items="${fighters}">
			<li><a href="getFighter.do?id=${fighter.id}">${fighter.firstName} ${fighter.lastName }</a></li>
		</c:forEach>
	</ul>
	<a href="createFighter.do">Create a New Fighter</a>

	<script>
		function toggleFighterList() {
			var fighterList = document.querySelector('.fighter-list');
			fighterList.style.display = (fighterList.style.display === 'none') ? 'block'
					: 'none';
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
