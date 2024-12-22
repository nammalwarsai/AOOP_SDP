<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
    
footer {
            background-color: #28a745;
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: 20px;
        }

        footer a {
            color: white;
            text-decoration: none;
            padding: 10px;
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
            background-color: red; /* Darker green on hover */
            border-radius: 5px;
        }
        body {
            background-color: #f7f9fc;
            font-family: Arial, sans-serif;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 1.5rem;
            text-align: center;
        }
        .header h1 {
            font-size: 2rem;
            font-weight: bold;
        }
        .container {
            margin-top: 30px;
        }
        .card {
            border: none;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .icon {
            font-size: 2rem;
            color: #28a745;
        }
        .card-title {
            color: #333;
        }
        .card-text{
        color:violet;
        }
    </style>
</head>
<body>
 <nav>
        <a href="index.jsp">Home</a>
        <a href="aboutus.jsp">About Us</a>
        <a href="Services.jsp">Services</a>
        <a href="Contact.jsp">Contact</a>
        <a href="Homemodulespage.jsp">Main Modules</a>
            <a href="FeedbackView.jsp">Feedback View</a>
                <a href="Allusers.jsp">User Management</a>
        
        <a href="Login.jsp" style="float: right;">Logout</a>
</nav>
    <header class="header">
        <h1>Welcome to the Modules of Our Project</h1>
        <p class="lead">Efficiently manage your healthcare system with our integrated modules</p>
    </header>

    <div class="container text-center">
        <div class="row mt-4">
            <!-- Module 1 -->
            <div class="col-md-3">
                <div class="card p-3">
                    <i class="fas fa-user-md icon mb-3"></i>
                    <h5 class="card-title">Doctor Management</h5>
                    <p class="card-text">Manage doctor profiles and schedules.</p>
                    <a href="doctorManagement.jsp" class="btn btn-primary">Access Module</a>
                </div>
            </div>
            <!-- Module 2 -->
            <div class="col-md-3">
                <div class="card p-3">
                    <i class="fas fa-user-friends icon mb-3"></i>
                    <h5 class="card-title">Patient Management</h5>
                    <p class="card-text">Access and update patient records.</p>
                    <a href="PatientManagement.jsp" class="btn btn-primary">Access Module</a>
                </div>
            </div>
            <!-- Module 3 -->
            <div class="col-md-3">
                <div class="card p-3">
                    <i class="fas fa-calendar-alt icon mb-3"></i>
                    <h5 class="card-title">Appointment Scheduling</h5>
                    <p class="card-text">Schedule and manage appointments efficiently.</p>
                    <a href="AppointmentScheduling.jsp" class="btn btn-primary">Access Module</a>
                </div>
            </div>
            <!-- Module 4 -->
            <div class="col-md-3">
                <div class="card p-3">
                    <i class="fas fa-bell icon mb-3"></i>
                    <h5 class="card-title">Notification System</h5>
                    <p class="card-text">Send and manage notifications for users.</p>
                    <a href="NotificationSystem.jsp" class="btn btn-primary">Access Module</a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <footer>
        <p>&copy; 2024 Healthcare Management System | All Rights Reserved</p>
        <a href="privacy-policy.jsp">Privacy Policy</a> | <a href="terms-of-service.jsp">Terms of Service</a>
    </footer>
    
</body>
</html>
