package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String doctor = request.getParameter("doctor");
        String department = request.getParameter("department");

        // Validate input (you might want to add more robust validation)
        if (name.isEmpty() || phone.isEmpty() || doctor.isEmpty() || department.isEmpty()) {
            response.sendRedirect("appointment-scheduling.jsp?error=missing_fields");
            return;
        }

        try (Connection connection = getConnection()) {
            String query = "INSERT INTO appointment_details (name, phone, doctor, department) VALUES (?, ?, ?, ?)";
            try (PreparedStatement ps = connection.prepareStatement(query)) {
                ps.setString(1, name);
                ps.setString(2, phone);
                ps.setString(3, doctor);
                ps.setString(4, department);

                int rowsInserted = ps.executeUpdate();
                if (rowsInserted > 0) {
                    response.sendRedirect("success.jsp"); // Create a success.jsp page to display a success message
                } else {
                    response.sendRedirect("appointment-scheduling.jsp?error=db_error");
                }
            } catch (SQLException e) {
                // Log the error for debugging
                e.printStackTrace();
                response.sendRedirect("appointment-scheduling.jsp?error=db_error");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("appointment-scheduling.jsp?error=db_connection");
        }
    }

    private Connection getConnection() throws SQLException {
        String dbUrl = "jdbc:postgresql://localhost:5432/hms";
        String dbUser = "postgres";
        String dbPassword = "9299202116A1a@";

        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return DriverManager.getConnection(dbUrl, dbUser, dbPassword);
    }
}