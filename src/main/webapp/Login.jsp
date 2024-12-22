<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        /* Custom styles for the navbar and header */
        body {
            font-family: 'Helvetica Neue', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f9fc;
        }
        nav {
            background-color: #28a745; /* Green color */
            color: white;
            padding: 10px;
        }
        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            display: inline-block;
        }
        nav a:hover {
            background-color: red;
            border-radius: 5px;
        }
        header {
            background-color: #007bff;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        header h1 {
            font-size: 2em;
        }
        /* Custom styles for the login container */
        .login-container {
            background-color: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            margin: 20px auto;
        }
        .login-container h2 {
            font-size: 1.75rem;
            margin-bottom: 1.5rem;
            text-align: center;
            color: #333;
        }
        .btn-primary {
            width: 100%;
            font-weight: bold;
            background-color: #007bff;
            border: none;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    

    <!-- Header -->
    <header>
        <h1>WELCOME TO LOGIN PAGE</h1>
        <h3>ACCESS YOUR ACCOUNT</h3>
    </header>

    <!-- Login Form -->
    <form id="loginForm" action="LoginServlet_hms" method="post">
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
    </div>
    <button type="submit" class="btn btn-primary mt-3">Login</button>
</form>

    
    
    <hr>
        
        <h3 class="text-center">Don't have an account click on the BELOW button to SIGN_UP</h3>
        <p class="text-center">
            <a href="Signup.jsp" class="btn btn-secondary">Sign-Up</a>
        </p>
   
    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  </body>
</html>
