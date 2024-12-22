package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet_hms")
public class SignupServlet_hms extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SignupServlet_hms() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String jdbcURL = "jdbc:postgresql://localhost:5432/hms";
        String dbUser = "postgres";
        String dbPassword = "9299202116A1a@";

        try {
            // Load the JDBC driver
            Class.forName("org.postgresql.Driver");

            // Establish database connection
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // SQL query to insert the new user
            String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);

            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {
                // Signup successful, redirect to login page
                response.sendRedirect("Login.jsp");
            } else {
                // Signup failed, show error message
                response.getWriter().println("Signup failed. Please try again.");
            }

            // Close resources
            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}
