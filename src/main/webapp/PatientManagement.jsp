<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Management</title>
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
    /* Existing navbar styles here */
    .table-container {
        margin: 20px;
        padding: 20px;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 8px;
        max-width: 90%;
    }
    .patient-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    .patient-table th, .patient-table td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    .patient-table th {
        background-color: #007bff;
        color: #fff;
    }
    .patient-table tr:hover {
        background-color: #f1f1f1;
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
<div class="text-center my-5">
    <h3>See All the patient Details</h3>
    <button class="btn btn-primary" onclick="getPatientDetails()">Get Patient Details</button>
</div>

<div id="patientData" class="table-container"></div>

<script>
    function getPatientDetails() {
        fetch('PatientManagementServlet') // Call the servlet to fetch patient data
            .then(response => response.text())
            .then(data => {
                document.getElementById("patientData").innerHTML = data;
            })
            .catch(error => console.error('Error:', error));
    }
</script>

</body>
</html>
