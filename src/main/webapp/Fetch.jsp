<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Fetch</title>
    <!-- Adding Bootstrap CSS from CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<h1 class="text-center mb-4">Candidate List</h1>

<!-- Display Pass Message -->
<h3 class="text-center text-success">${pass }</h3>

<!-- Styled Table -->
<table class="table table-bordered table-striped">
    <thead class="thead-dark">
    <tr>
        <th>Name</th>
        <th>Mobile</th>
        <th>DOB</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="candidate" items="${list}">
        <tr>
            <td>${candidate.name }</td>
            <td>${candidate.mobile }</td>
            <td>${candidate.dob }</td>
            <td>
                <a href="edit?id=${candidate.id }" class="btn btn-warning btn-sm">Edit</a>
            </td>
            <td>
                <a href="delete?id=${candidate.id}" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<!-- Adding Bootstrap JS (optional, for using Bootstrap JS components) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
