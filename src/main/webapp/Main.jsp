<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Main</title>
    <!-- Adding Bootstrap CSS from CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<div class="text-center">
    <h3>${pass}</h3>
    <h1 class="mb-4">--WELCOME--</h1>

    <!-- Updated Buttons with Bootstrap -->
    <a href="insert" class="btn btn-success mb-2">ADD  details</a>
    <a href="fetch" class="btn btn-info mb-2">SHOW  details</a>
</div>

<!-- Adding Bootstrap JS (optional, for using Bootstrap JS components) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
