import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Database Configuration matching your setup
        String url = "jdbc:mysql://localhost:3306/joblattice";
        String user = "root";
        String pass = "subhankar@2002";
        
        System.out.println("SignIn Page Loaded");
        
        // Fetch inputs from the form
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
            
            // Query to find user matching BOTH email and password
            String query = "SELECT * FROM users WHERE email = ? AND password_hash = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            
            rs = pst.executeQuery();
            
            if (rs.next()) {
                // SUCCESS: User found
                System.out.println("Login Success for: " + rs.getString(1));
                // Create a session to keep user logged in
                String name=(String) rs.getString("user_name");
                HttpSession session = request.getSession();
                session.setAttribute("userEmail", email);
                session.setAttribute("username", name);
                
                // 3. Forward the request and response to Servlet B
//                RequestDispatcher dispatcher = request.getRequestDispatcher("/WebPage");
//                dispatcher.forward(request, response);
                response.sendRedirect(request.getContextPath() + "/HomePage");
                // Redirect user to your main page (adjust filename if necessary)
//                response.sendRedirect("main_page.jsp");
            } else {
                // FAILURE: Wrong credentials
                System.out.println("Login Failed for: " + email);
                
                // Inject an error message above the login form
                out.println("<script type='text/javascript'>");
                out.println("alert('Invalid Email or Password! Please try again.');");
                out.println("window.location.href='login.html';"); // Redirects back to login form
                out.println("</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Database Error: " + e.getMessage() + "</h3>");
        } finally {
            // Securely close connections to prevent memory leaks
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (pst != null) pst.close(); } catch (Exception e) {}
            try { if (con != null) con.close(); } catch (Exception e) {}
        }
    }
}