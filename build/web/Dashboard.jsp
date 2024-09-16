<%-- 
    Document   : Dashboard
    Created on : 13 Apr, 2024, 11:44:47 PM
    Author     : RAAGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="WEB-INF/tlds/customs.tld" prefix="cs" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">
        <link href="Styles/style.css" rel="stylesheet"> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Dashboard</title>
    </head>
    <body style="background-color: rgb(243, 242, 242);">
        <%  
            session = request.getSession();
            String userName = (String)session.getAttribute("username");
          // String userName = "rraagi";
        %>
        
        <%@include file="menu.html" %>
        <!-- Section: Design Block -->
            <div class="col-sm-10">
                <h2 style="margin-top: 30px"><i class="fas fa-tachometer-alt fa-fw"></i>
                    Dashboard
                </h2>
                <hr /><br />
                <table>
                    <tr>
                        <td><b>Weekly Expenses</b></td>
                        <td><cs:week username="<%=userName%>"/></td>
                    </tr>
                    
                    <tr>
                        <td><b>Monthly Expenses</b></td>
                        <td><cs:month username="<%=userName%>"/></td>
                    </tr>
            </div>
        </section>
    </body>
</html>
