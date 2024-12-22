<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Feedback</title>
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
            font-size: 2em;
            margin: 0;
        }
        .container {
            margin-top: 20px;
        }
        .table {
            margin-top: 20px;
        }
        .btn-view {
            margin-top: 10px;
            padding: 10px 20px;
        }
        .table thead th, .table tbody td {
            padding: 15px;
            text-align: center;
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
    <h1>Feedback Management For Admin</h1>
</header>

<div class="container">
    <form action="FeedbackViewServlet" method="post">
        <button type="submit" class="btn btn-primary btn-view">See Feedback</button>
    </form>

    <!-- Feedback Table -->
    <table class="table table-bordered table-striped mt-3">
        <thead class="thead-dark">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
        </thead>
        <tbody>
            <%
                if (request.getAttribute("feedbackList") != null) {
                    java.util.List<java.util.Map<String, String>> feedbackList = 
                            (java.util.List<java.util.Map<String, String>>) request.getAttribute("feedbackList");
                    for (java.util.Map<String, String> feedback : feedbackList) {
                        out.print("<tr>");
                        out.print("<td>" + feedback.get("name") + "</td>");
                        out.print("<td>" + feedback.get("email") + "</td>");
                        out.print("<td>" + feedback.get("message") + "</td>");
                        out.print("</tr>");
                    }
                } else {
                    out.print("<tr><td colspan='3'>No feedback available</td></tr>");
                }
            %>
        </tbody>
    </table>
</div>

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
