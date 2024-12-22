<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Doctor</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Add a New Doctor</h2>
        <form action="AddDoctorsServlet" method="post">
            <div class="form-group">
                <label for="doc_name">Doctor Name:</label>
                <input type="text" class="form-control" id="doc_name" name="doc_name" required>
            </div>
            <div class="form-group">
                <label for="doc_phone_number">Phone Number:</label>
                <input type="text" class="form-control" id="doc_phone_number" name="doc_phone_number" required>
            </div>
            <div class="form-group">
                <label for="dept_doc">Department:</label>
                <input type="text" class="form-control" id="dept_doc" name="dept_doc" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Doctor</button>
        </form>
    </div>
</body>
</html>
