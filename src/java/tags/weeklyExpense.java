/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tags;

import java.time.LocalDate;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.sql.*;

/**
 *
 * @author RAAGI
 */
public class weeklyExpense extends TagSupport{
    private String username;

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public int doStartTag() throws JspException {
        LocalDate endDate = LocalDate.now();
        LocalDate startDate = endDate.minusDays(6);
        double totalExpenses = 0.0;
        try
        {
            JspWriter out = pageContext.getOut();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/expense", "root", "");

            // Prepare SQL query to fetch expenses within the specified date range
            String sql = "SELECT spend FROM expenditure WHERE username = ? AND date BETWEEN ? AND ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setDate(2, java.sql.Date.valueOf(startDate));
            statement.setDate(3, java.sql.Date.valueOf(endDate));

            // Execute query
            ResultSet resultSet = statement.executeQuery();

            // Sum up expenses
            while (resultSet.next()) {
                totalExpenses += resultSet.getFloat("spend");
            }
            out.println("" + totalExpenses);
            // Close resources
            resultSet.close();
            statement.close();
            connection.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return SKIP_BODY; //To change body of generated methods, choose Tools | Templates.
    }
    
}
