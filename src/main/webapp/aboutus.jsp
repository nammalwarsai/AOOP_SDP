<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Healthcare Management System</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    
    <style>
        /* Global Styles */
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
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
            background-color: #218838; /* Darker green on hover */
            border-radius: 5px;
        }

        header {
            background-color: #007bff;
            color: white;
            padding: 50px 0;
            text-align: center;
        }

        header h1 {
            font-size: 2.5em;
            font-weight: 700;
            margin: 0;
        }

        .container {
            padding: 50px 15px;
            flex-grow: 1;
        }

        .section-title {
            font-size: 2em;
            color: #007bff;
            text-align: center;
            margin-bottom: 30px;
            font-weight: 700;
        }

        .team-member {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-bottom: 30px;
            height: 250px; /* Fixed height for uniformity */
        }

        .team-member h3 {
            font-size: 1.5em;
            color: #007bff;
        }

        .team-member .role, .team-member .id {
            font-size: 1.1em;
            color: #28a745;
        }

        .team-member p {
            font-size: 1em;
            color: #555;
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
        <h1>About Us - Healthcare Management System</h1>
        <p>Empowering healthcare services with innovative solutions</p>
    </header>

    <div class="container">
        <!-- Mission Section -->
        <div class="section-title">Our Mission</div>
        <p>We aim to revolutionize the healthcare industry by offering streamlined management solutions that improve the quality of service, reduce operational costs, and ensure seamless patient experiences.</p>

        <!-- Why Choose Us Section -->
        <div class="section-title">Why Choose Us?</div>
        <ul>
            <li>Efficient appointment scheduling and management</li>
            <li>Secure, easy-to-use patient record management</li>
            <li>Real-time notifications for patient and staff</li>
            <li>Advanced analytics for improving patient care</li>
        </ul>

        <!-- Team Section -->
        <div class="section-title">Meet Our Team</div>

        <div class="row">
            <!-- Team Member 1 -->
            <div class="col-md-4">
                <div class="team-member">
                    <h3>NAMMALWAR SAI</h3>
                    <p class="id">2300033899</p>
                    <p class="role">Project Manager</p>
                    <p>SAI is focused on managing project timelines and ensuring effective team collaboration</p>
                </div>
            </div>
            <!-- Team Member 2 -->
            <div class="col-md-4">
                <div class="team-member">
                    <h3>MARUTHI</h3>
                    <p class="id">2300090155</p>
                    <p class="role">Software Engineer</p>
                    <p>maruthi specializes in develpoing frontend and backend for some modules</p>
                </div>
            </div>
            <!-- Team Member 3 -->
            <div class="col-md-4">
                <div class="team-member">
                    <h3>Gaurav Kumar</h3>
                    <p class="id">2300033867</p>
                    <p class="role">Software Engineer</p>
                    <p>Gaurav Focuses on buliding the frontend and backedn for some modules</p>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Healthcare Management System | All Rights Reserved</p>
        <a href="privacy-policy.jsp">Privacy Policy</a> | <a href="terms-of-service.jsp">Terms of Service</a>
    </footer>

    <!-- Bootstrap JS & Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
