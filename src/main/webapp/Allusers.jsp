<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
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
        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        .button-container {
            text-align: center;
            margin: 20px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .delete-button {
            background-color: #f44336;
        }
        .delete-button:hover {
            background-color: #d32f2f;
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
    <h1 style="text-align: center;">User Management For Admin</h1>

    <div class="button-container">
        <form action="AllUsersServlet" method="get">
            <button type="submit">See All Users</button>
        </form>
    </div>

    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                ArrayList<String[]> users = (ArrayList<String[]>) request.getAttribute("users");
                if (users != null) {
                    for (String[] user : users) {
                        out.println("<tr>");
                        out.println("<td>" + user[0] + "</td>");
                        out.println("<td>" + user[1] + "</td>");
                        out.println("<td>");
                        out.println("<form action='DeleteUserServlet' method='post'>");
                        out.println("<input type='hidden' name='username' value='" + user[0] + "'>");
                        out.println("<button type='submit' class='delete-button'>Delete</button>");
                        out.println("</form>");
                        out.println("</td>");
                        out.println("</tr>");
                    }
                } else {
                    out.println("<tr><td colspan='3'>No users to display. Click the button above to load users.</td></tr>");
                }
            %>
        </tbody>
    </table>
    
    <footer>
        <p>&copy; 2024 Healthcare Management System | All Rights Reserved</p>
        <a href="privacy-policy.jsp">Privacy Policy</a> | <a href="terms-of-service.jsp">Terms of Service</a>
    </footer>
    
</body>
</html>
