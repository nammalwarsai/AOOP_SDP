package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FeedbackViewServlet")
public class FeedbackViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Map<String, String>> feedbackList = new ArrayList<>();

        try {
            // Database connection
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hms", "postgres", "9299202116A1a@");

            // SQL Select query
            String sql = "SELECT name, email, message FROM feedback_received";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            // Process each row in result set
            while (rs.next()) {
                Map<String, String> feedback = new HashMap<>();
                feedback.put("name", rs.getString("name"));
                feedback.put("email", rs.getString("email"));
                feedback.put("message", rs.getString("message"));
                feedbackList.add(feedback);
            }

            // Close resources
            rs.close();
            statement.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Set feedback list as request attribute and forward to JSP
        request.setAttribute("feedbackList", feedbackList);
        request.getRequestDispatcher("FeedbackView.jsp").forward(request, response);
    }
}
