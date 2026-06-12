import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/WebPage")
public class WebPage extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // 1. Retrieve the attribute you set in FirstPage
//        String username = (String) request.getAttribute("username");
            
        // 2. Set the content type so the browser knows it's HTML
//        response.setContentType("text/html");
        
        // 3. Print the success message
    	// 3. Create the dispatcher and forward to the JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("WebPage.jsp");
        dispatcher.forward(request, response);
//        response.getWriter().println("<h2>Registration Successful! Welcome, " + username + "</h2>");
    }
}