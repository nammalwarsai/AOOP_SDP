<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Appointment Scheduling</title>
    <!-- Add Bootstrap CSS and Font Awesome for icons -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
        }

        .appointment-form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-top: 20px;
        }

        .appointment-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .appointment-form label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        .appointment-form input, .appointment-form button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .appointment-form button {
            background-color: #28a745;
            color: #fff;
            font-weight: bold;
            border-radius: 4px;
            cursor: pointer;
        }

        .appointment-form button:hover {
            background-color: #218838;
        }

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
    <!-- Appointment Form -->
     <div class="appointment-form">
        <h2>Schedule Your Appointment</h2>
        <form id="appointmentForm" action="AppointmentServlet" method="post">
            <label for="name">Enter Your Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="phone">Enter Your Phone Number:</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="doctor">Name OF The Doctor You Want TO meet:</label>
            <input type="text" id="doctor" name="doctor" required>

            <label for="department">Department Of the Doctor:</label>
            <input type="text" id="department" name="department" required>

            <button type="submit">Schedule   
 Appointment</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
    function submitForm(event) {
        event.preventDefault(); // Prevents the form from submitting the traditional way

        const formData = new FormData(document.getElementById("appointmentForm"));
        
        // Log the data being sent to help debug
        for (let [key, value] of formData.entries()) {
            console.log(`${key}: ${value}`);
        }

        fetch("AppointmentServlet", {
            method: "POST",
            body: formData
        })
        .then(response => response.text())
        .then(data => {
            alert(data);
        })
        .catch(error => {
            console.error("Error:", error);
            alert("Failed to connect to the server.");
        });
    }
</script>

</body>
</html>
