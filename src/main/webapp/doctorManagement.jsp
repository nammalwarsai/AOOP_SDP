<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Management</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
    .navbar {
            background-color: #ffffff;
            border-bottom: 2px solid #ddd;
            padding: 10px 20px;
            width: 100%;
        }
        
        .navbar-brand .nav-icon {
            color: green;
            font-size: 1.5rem;
            margin-right: 10px;
        }
        
        .navbar-nav .nav-link {
            color: #007bff;
            font-weight: bold;
            padding: 8px 15px;
            transition: color 0.3s ease;
        }

        .navbar-nav .nav-link:hover {
            color: red;
        }

        .navbar-nav .nav-link.active {
            color: #28a745; /* Green for active links */
        }

        /* Align items in navbar */
        .navbar-nav {
            flex-direction: row;
            align-items: center;
        }

        .nav-item {
            padding-left: 10px;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #333;
            margin-top: 20px;
        }
        .button {
            padding: 12px 24px;
            font-size: 18px;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 20px 0;
        }
        .button:hover {
            background-color: #45a049;
        }
        .doctor-details {
            width: 90%; /* Increased width */
            margin: 20px auto;
            border-collapse: collapse;
            font-size: 16px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .doctor-details th, .doctor-details td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
        }
        .doctor-details th {
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
        }
        .doctor-details td {
            background-color: #fff;
            color: #333;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="Homemodulespage.jsp">
            <i class="fas fa-home nav-icon"></i> Home
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="doctorManagement.jsp">
                        <i class="fas fa-user-md nav-icon"></i> Doctor Management
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="PatientManagement.jsp">
                        <i class="fas fa-user-friends nav-icon"></i> Patient Management
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AppointmentScheduling.jsp">
                        <i class="fas fa-calendar-alt nav-icon"></i> Appointment Scheduling
                    </a>
                </li>
              
            </ul>
        </div>
    </nav>
    <h1>See all our doctors</h1>
<p>Click on the button below to add a new doctor.</p>
<button class="button" onclick="location.href='AddDoctors.jsp'">Add Doctor</button>
<button class="button" onclick="getDoctorDetails()">Get Doctor Details</button>
<div id="doctorData"></div>

    <script>
        function getDoctorDetails() {
            fetch('DrManagementServlet') // Sends a request to the servlet
                .then(response => response.text())
                .then(data => {
                    document.getElementById("doctorData").innerHTML = data;
                })
                .catch(error => console.error('Error:', error));
        }
    </script>
</body>
</html>
