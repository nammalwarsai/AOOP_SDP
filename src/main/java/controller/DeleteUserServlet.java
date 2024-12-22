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

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserServlet() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        if (username != null && !username.isEmpty()) {
            Connection conn = null;
            PreparedStatement stmt = null;

            try {
                // Database connection parameters
                String url = "jdbc:postgresql://localhost:5432/hms";
                String user = "postgres";
                String password = "9299202116A1a@"; // Replace with your actual password

                // Establish database connection
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection(url, user, password);

                // Create SQL query to delete the user
                String sql = "DELETE FROM users WHERE username = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, username);

                // Execute the deletion
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    // If the user was deleted successfully, redirect to AllUsersServlet to refresh the list
                    response.sendRedirect("AllUsersServlet");
                } else {
                    // If no user was deleted, show an error message
                    response.getWriter().write("Error: User not found.");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("Error: Unable to delete user.");
            } finally {
                try {
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
            response.getWriter().write("Error: No username specified.");
        }
    }
}
