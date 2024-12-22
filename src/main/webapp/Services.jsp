<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - Healthcare Management System</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
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
            font-family: 'Helvetica Neue', sans-serif;
            background-color: #f9f9f9;
            color: #333;
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
        .service-card {
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            background-color: #fff;
            margin: 15px 0;
        }
        
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

    <header>
        <h1>EXPLORE OUR SERVICES  </h1>
    </header>

    <div class="container my-4">
        <div class="row">
            <div class="col-md-4">
                <div class="service-card">
                    <h3 class="text-primary">User Management</h3>
                    <p>Manage user registration, login, and profile information.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card">
                    <h3 class="text-primary">Appointment Scheduling</h3>
                    <p>Schedule and manage appointments efficiently.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card">
                    <h3 class="text-primary">Patient Management</h3>
                    <p>Access and update patient records securely.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card">
                    <h3 class="text-primary">Doctor Management</h3>
                    <p>Manage doctor profiles and schedules with ease.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card">
                    <h3 class="text-primary">Notification System</h3>
                    <p>Send real-time notifications to patients and staff.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card">
                    <h3 class="text-primary">Billing and Payments</h3>
                    <p>Handle billing and payment records securely.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <footer>
        <p>&copy; 2024 Healthcare Management System | All Rights Reserved</p>
        <a href="privacy-policy.jsp">Privacy Policy</a> | <a href="terms-of-service.jsp">Terms of Service</a>
    </footer>
    
</body>
</html>
