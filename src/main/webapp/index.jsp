<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Healthcare Management System</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Helvetica Neue', sans-serif;
            margin: 0;
            padding: 0;
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
        header {
            background-color: #007bff;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        header h1 {
            font-size: 2.5em;
        }
        main {
            padding: 20px;
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
        <h1>Healthcare Management System</h1>
        <p>Welcome to the HMS - Streamlining Healthcare Services with EASE</p>
    </header>

    <main class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="text-primary">Appointment Scheduling</h5>
                        <p>Schedule and manage appointments efficiently.</p>
                        <a href="AppointmentScheduling.jsp" class="btn btn-primary">schedule your appointments</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="text-primary">Patient Management</h5>
                        <p>Manage patient information and details efficiently.</p>
                        <a href="PatientManagement.jsp" class="btn btn-primary">See all the patients</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="text-primary">Doctor Management</h5>
                        <p>Manage doctor profiles and schedules time-to-time</p>
                        <a href="doctorManagement.jsp" class="btn btn-primary">See ALL our Doctors</a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <footer>
        <p>&copy; 2024 Healthcare Management System | All Rights Reserved</p>
        <a href="privacy-policy.jsp">Privacy Policy</a> | <a href="terms-of-service.jsp">Terms of Service</a>
    </footer>
</body>
</html>
