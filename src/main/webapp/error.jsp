<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .error-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f8d7da;
        }
        .error-message {
            color: #721c24;
            font-size: 24px;
            font-weight: bold;
        }
        .try-again-btn {
            margin-top: 20px;
            background-color: #dc3545;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            text-decoration: none;
        }
        .try-again-btn:hover {
            background-color: #c82333;
            color: white;
            text-decoration: none;
        }
        .oops-text {
            font-size: 60px;
            font-weight: bold;
            color: #721c24;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="oops-text">Oops!</div>
        <div class="error-message">Invalid Username or Password.</div>
        <p>It seems you’ve entered the wrong credentials.</p>
        <a href="Login.jsp" class="try-again-btn">Try Again</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
