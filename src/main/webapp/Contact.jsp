<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
            background-color: #28a745;
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
        body {
            font-family: 'Helvetica Neue', sans-serif;
            margin: 0;
            padding: 0;
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
    <h1>Contact Us</h1>
</header>

<main class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card mb-4">
                <div class="card-body">
                    <h5 class="card-title">Get in Touch</h5>
                    <form action="FeedbackReceivedServlet" method="post">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea class="form-control" name="message" id="message" rows="4" placeholder="Your message here..." required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card mb-4">
                <div class="card-body">
                    <h5 class="card-title">Contact Information</h5>
                    <p><strong>Address:</strong> KL UNIVERSITY</p>
                    <p><strong>Phone:</strong> +91 9299202117</p>
                    <p><strong>Email:</strong> nammalwarsai@gmail.com</p>
                    <p><strong>Follow us on:</strong></p>
                    <ul class="list-unstyled">
                        <li><a href="https://www.linkedin.com/in/raja-sai-nammalwar-kurapati-9001202a4/" class="text-primary">LinkedIn</a></li>
                    </ul>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-body">
                    <h5 class="card-title">Location</h5>
                    <p><strong>KL UNIVERSITY</strong></p>
                    <p>Green Fields, Vaddeswaram, Andhra Pradesh 522302</p>
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
