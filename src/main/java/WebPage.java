import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import joblattice.models.JobPosting;

@WebServlet("/WebPage")
public class WebPage extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Your exact database configuration settings
    private static final String DB_URL = "jdbc:mysql://localhost:3306/joblattice";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "subhankar@2002";

    // Hitting the URL directly in the browser triggers doGet
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<JobPosting> jobList = new ArrayList<>();

        try {
            // Load MySQL Driver explicitly for Tomcat runtime stability
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                 PreparedStatement stmt = conn.prepareStatement("SELECT * FROM job_postings");
                 ResultSet rs = stmt.executeQuery()) {
                
                // Loop through your database rows and map them to Java objects
                while (rs.next()) {
                    JobPosting job = new JobPosting(
                        rs.getString("title"),
                        rs.getString("company_name"),
                        rs.getString("location"),
                        rs.getString("employment_type")
                    );
                    jobList.add(job);
                }
            }
        } catch (Exception e) {
            e.printStackTrace(); // Logs database connection issues to your Eclipse console
        }

        // Attach the list to the request so WebPage.jsp can access it via ${jobList}
        request.setAttribute("jobList", jobList);

        // Forward the request straight to your JSP view layer
        RequestDispatcher dispatcher = request.getRequestDispatcher("WebPage.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response); // Route any POST form submissions through the same display logic
    }
}