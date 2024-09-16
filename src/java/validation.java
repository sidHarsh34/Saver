import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/signup")
public class validation implements Filter {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/expense";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;

        // Validate the sign-up request
        String username = httpRequest.getParameter("username");
        String password = httpRequest.getParameter("pwd1");
        String confirmPassword = httpRequest.getParameter("pwd2");
        String firstName = httpRequest.getParameter("fname");
        String lastName = httpRequest.getParameter("lname");
        if (username == null || password == null || confirmPassword == null ||
                username.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() ||
                firstName == null || firstName.isEmpty() || lastName == null || lastName.isEmpty()) {
            // Redirect the user to an error page
            httpRequest.getRequestDispatcher("/error").forward(request, response);
            return;
        }

        // Check if the passwords match
        if (password.equals(confirmPassword)) {           
            chain.doFilter(request, response);
        }
        
       
        httpRequest.getRequestDispatcher("/error").forward(request, response);
            return;
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
}