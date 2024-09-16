/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author RAAGI
 */
public class settingLimits extends HttpServlet {

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
            out.println("<title>Servlet settingLimits</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet settingLimits at " + request.getContextPath() + "</h1>");
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

    String category = request.getParameter("category");
    String limit = request.getParameter("limit");
    int cid = Integer.parseInt(category);
    float parsedLimit = Float.parseFloat(limit);
    switch(cid)
    {
        case 1:
            category = "Utility";
            break;
        case 2:
            category = "Groceries";
            break;
        case 3:
            category = "Entertainment";
            break;
        case 4:
            category = "Health";
            break;
    }
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/expense", "root", "");
        
        PreparedStatement statement = connection.prepareStatement("INSERT INTO limits(username, cid, category, maxExpense) VALUES (?, ?, ?, ?)");
        statement.setString(1, userName);
        statement.setInt(2, cid);
        statement.setString(3, category);
        statement.setFloat(4, parsedLimit);
        statement.executeUpdate(); // Execute the SQL statement
        request.getRequestDispatcher("setLimits.jsp").forward(request, response);
    }
    catch(Exception e)
    {
        out.println("Error: " + e.getMessage());
    }
    finally
    {
      //  if (connection != null)
        {
     //       connection.close();
        }
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
