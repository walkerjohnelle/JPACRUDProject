<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Fighter</title>
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
        	<style>
        body {
            background-image: url('https://images4.alphacoders.com/132/1320808.jpeg'); 
            background-size: cover;
            color: #fff; 
            background-repeat: no-repeat;
            
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
<body>
    <div class="container mt-5">
        <h1>Delete Fighter</h1>
        <p>Are you sure you want to delete ${fighter.firstName} ${fighter.lastName}?</p>
        <form action="${pageContext.request.contextPath}/deleteFighter.do" method="POST">
            <input type="hidden" name="id" value="${fighter.id}" />
            <button type="submit" class="btn btn-danger">Yes, Delete</button>
        </form>
        <a href="${pageContext.request.contextPath}/home.do" class="btn btn-secondary">Cancel</a>
    </div>
    
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
