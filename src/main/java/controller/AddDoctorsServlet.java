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

@WebServlet("/AddDoctorsServlet")
public class AddDoctorsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String docName = request.getParameter("doc_name");
        String docPhoneNumber = request.getParameter("doc_phone_number");
        String deptDoc = request.getParameter("dept_doc");

        // Database connection parameters
        String jdbcURL = "jdbc:postgresql://localhost:5432/hms";
        String dbUser = "postgres";
        String dbPassword = "9299202116A1a@";

        try {
            // Load PostgreSQL JDBC driver
            Class.forName("org.postgresql.Driver");

            // Connect to the database
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Prepare SQL statement to insert doctor details
            String sql = "INSERT INTO doctor (doc_name, doc_phone_number, dept_doc) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, docName);
            statement.setString(2, docPhoneNumber);
            statement.setString(3, deptDoc);

            // Execute the SQL statement
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                // Redirect to success.jsp if insertion is successful
                response.sendRedirect("success.jsp");
            } else {
                response.getWriter().println("Error: Failed to add doctor.");
            }

            // Close the connection
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
