package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DrManagementServlet")
public class DrManagementServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // PostgreSQL connection details
    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/hms";
    private static final String JDBC_USER = "postgres";
    private static final String JDBC_PASSWORD = "9299202116A1a@";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        try {
            // Load PostgreSQL driver
            Class.forName("org.postgresql.Driver");
            
            // Establish a connection
            Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            
            // SQL query to fetch doctor details
            String query = "SELECT doc_name, doc_phone_number, dept_doc FROM doctor";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            // Generate HTML table with doctor data
            out.println("<table class='doctor-details'>");
            out.println("<tr><th>Doctor Name</th><th>Phone Number</th><th>Department</th></tr>");
            
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("doc_name") + "</td>");
                out.println("<td>" + rs.getString("doc_phone_number") + "</td>");
                out.println("<td>" + rs.getString("dept_doc") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            
            // Close connections
            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error retrieving data. Please try again later.</p>");
        } finally {
            out.close();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response); // Call doGet to handle data retrieval
    }
}
