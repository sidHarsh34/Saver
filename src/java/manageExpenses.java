/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author RAAGI
 */
public class manageExpenses extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet manageExpenses</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet manageExpenses at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
         
        HttpSession session = request.getSession();
        String userName = (String)session.getAttribute("username");        

        String category = request.getParameter("type");
        String dateString = request.getParameter("date");
        String spend = request.getParameter("spend");
        String description = request.getParameter("description");
        int cid = 0;
        float parsedLimit = Float.parseFloat(spend);
        if(category.equalsIgnoreCase("Utility"))
            cid = 1;
        else if(category.equalsIgnoreCase("Groceries"))
            cid = 2;
        else if(category.equalsIgnoreCase("Entertainment"))
            cid = 3;
        else if(category.equalsIgnoreCase("Health"))
            cid = 4;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/expense", "root", "");
        
            PreparedStatement statement = connection.prepareStatement("INSERT INTO expenditure(username, cid, category, spend, date, description) VALUES (?, ?, ?, ?, ?, ?)");
            statement.setString(1, userName);
            statement.setInt(2, cid);
            statement.setString(3, category);
            statement.setFloat(4, parsedLimit);
            statement.setDate(5, Date.valueOf(dateString));
            statement.setString(6, description);
            statement.executeUpdate(); // Execute the SQL statement
            
            connection.close();
            request.getRequestDispatcher("manageExpenses.jsp").forward(request, response);
        }
        catch(Exception e)
        {
            out.println("Error: " + e.getMessage());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
