package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AllUsersServlet
 */
@WebServlet("/AllUsersServlet")
public class AllUsersServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllUsersServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Database connection parameters
            String url = "jdbc:postgresql://localhost:5432/hms";
            String user = "postgres";
            String password = "9299202116A1a@"; // Replace with your actual password

            // Establish database connection
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // Execute query
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT username, password FROM users");

            // Store the data in a list
            ArrayList<String[]> users = new ArrayList<>();
            while (rs.next()) {
                String[] userData = new String[2];
                userData[0] = rs.getString("username");
                userData[1] = rs.getString("password");
                users.add(userData);
            }

            // Pass data to the JSP
            request.setAttribute("users", users);
            request.getRequestDispatcher("Allusers.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
