import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
@WebServlet("/main_page")
public class FirstPage extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	String url = "jdbc:mysql://localhost:3306/joblattice";
        String user = "root";
        String pass = "subhankar@2002";
        System.out.println("Main Page Loaded");
        
        String name = request.getParameter("uname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(url, user, pass);

            String sql =
                    "INSERT INTO users(user_name, email, password_hash) VALUES (?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                System.out.println("User Registered Successfully");
             // 1. Create the data you want to pass (can be any Object)
                
                // 2. Attach the data to the request object
             // 1. Store data in the Session (persists across multiple requests)
                request.getSession().setAttribute("username", name);
                
                // 2. Tell the browser to make a new request to /WebPage
                response.sendRedirect(request.getContextPath() + "/WebPage");
//                request.setAttribute("username", name);
                
                // 3. Forward the request and response to Servlet B
//                RequestDispatcher dispatcher = request.getRequestDispatcher("/WebPage");
//                dispatcher.forward(request, response);

//                response.getWriter().println(
//                        "<h2>Registration Successful!</h2>");
            } else {
                response.getWriter().println(
                        "<h2>Registration Failed!</h2>");
                
            }

            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();

            response.getWriter().println(
                    "<h2>User Name Already Exists</h2>");
        }
    	
    	// Set the response content type
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
        
        // Reading the parameters sent from your HTML form
        
        
//        response.sendRedirect("/joblattice/main_page.jsp");
        
    }
}