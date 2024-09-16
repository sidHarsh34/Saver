<%-- 
    Document   : manageExpenses
    Created on : 12 Apr, 2024, 11:51:18 PM
    Author     : RAAGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">
        <link href="Styles/style.css" rel="stylesheet"> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Manage Expenses</title>
    </head>
    <body style="background-color: rgb(243, 242, 242);">
        <%  
            session = request.getSession();
            String userName = (String)session.getAttribute("username");
          // String userName = "rraagi";
        %>
        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/expense" user="root" password="" />
        <sql:query dataSource="${db}" var="rs">
            SELECT * FROM users WHERE username = "<%=userName%>"
        </sql:query>
        <c:set var="row" value="${rs.rows[0]}"/>
        <%@include file="menu.html" %>
        <!-- Section: Design Block -->
            <div class="col-sm-10">
                <h2 style="margin-top: 30px"><i class="fas fa-envelope-open fa-fw"></i>
                    Manage Expenses
                </h2>
                <hr /><br />
                <form name="manageExpenses" method="post" action="manageExpenses">                
                    <div class="form-group mb-3">
                        <label class="form-label" for="type">Type:</label>
                        <input type="text" name="type" class="form-control" placeholder="Category of your spending"/>
                        
                        <label class="form-label" for="spend">Spend:</label>
                        <input type="text" name="spend" class="form-control" placeholder="Cost"/>
                        
                        <label class="form-label" for="date">Date:</label>
                        <input type="date" name="date" class="form-control" placeholder="Date: dd/mm/yyyy"/>
                        
                        <label class="form-label" for="description">Description:</label>
                        <textarea class="form-control" rows="2" name="description"></textarea>
                    </div>
                    
                    <button type="submit" class="btn btn-success btn-block mb-2">
                        Add
                    </button>
                </form>
            </div>
        </section>
    </body>
</html>