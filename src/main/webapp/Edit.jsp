<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert</title>
    <!-- Adding Bootstrap CSS from CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<h1 class="text-center mb-4">Update Candidate</h1>

<form action="update" method="post" class="form-horizontal">
    <!-- ID (Hidden) -->
    <input type="hidden" name="id" value="${candidate.id}">

    <!-- Name Field -->
    <div class="form-group row">
        <label for="name" class="col-sm-2 col-form-label">Name:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="name" name="name" value="${candidate.name}" required>
        </div>
    </div>

    <!-- Mobile Field -->
    <div class="form-group row">
        <label for="mobile" class="col-sm-2 col-form-label">Mobile:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="mobile" name="mobile" value="${candidate.mobile}" required>
        </div>
    </div>

    <!-- Date of Birth Field -->
    <div class="form-group row">
        <label for="dob" class="col-sm-2 col-form-label">DOB:</label>
        <div class="col-sm-10">
            <input type="date" class="form-control" id="dob" name="dob" value="${candidate.dob}" required>
        </div>
    </div>

    <!-- Buttons -->
    <div class="form-group row">
        <div class="col-sm-10 offset-sm-2">
            <button type="submit" class="btn btn-primary">Update</button>
            <button type="reset" class="btn btn-secondary">Cancel</button>
        </div>
    </div>
</form>

<!-- Adding Bootstrap JS (optional, for using Bootstrap JS components) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
