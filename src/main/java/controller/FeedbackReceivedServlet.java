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

@WebServlet("/FeedbackReceivedServlet")
public class FeedbackReceivedServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        try {
            // Database connection
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hms", "postgres", "9299202116A1a@");

            // SQL Insert query
            String sql = "INSERT INTO feedback_received (name, email, message) VALUES (?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, message);

            // Execute query
            int rowsInserted = statement.executeUpdate();

            // Check if the insertion was successful
            if (rowsInserted > 0) {
                // Redirect to success page
                response.sendRedirect("success1.jsp");
            } else {
                response.getWriter().write("An error occurred while saving your message.");
            }

            // Close resources
            statement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred while saving your message.");
        }
    }
}
