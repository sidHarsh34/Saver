<%-- 
    Document   : trackExpenses
    Created on : 13 Apr, 2024, 7:11:58 PM
    Author     : RAAGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">
        <link href="Styles/style.css" rel="stylesheet"> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Track Expenses</title>
        <style>
            table {
                font-family: Arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            th {
                padding: 8px;
                text-align: left;
                background-color: #f2f2f2;
                color: #333;
                border: 1px solid #ccc;
            }

            td {
                border: 1px solid #ccc;
                padding: 8px;
                text-align: left;
                vertical-align: top;
            }
                
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            
            tr:hover {  
                background-color: #ddd;
            }
        </style>
    </head>
    <body style="background-color: rgb(243, 242, 242);">
        <%  
            session = request.getSession();
            String userName = (String)session.getAttribute("username");
          // String userName = "rraagi";
        %>
        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/expense" user="root" password="" />
        <sql:query dataSource="${db}" var="rs">
            SELECT * FROM expenditure WHERE username = "<%=userName%>"
        </sql:query>
        
        <%@include file="menu.html" %>
        <!-- Section: Design Block -->

            <div class="col-sm-10">
                <h2 style="margin-top: 30px"><i class="fas fa-list fa-fw"></i>
                    Track Expenses
                </h2>
                <hr /><br />
            
                <table>
                    <tr>
                        <th>Category</th>
                        <th>Expenditure</th>
                        <th>Date</th>
                        <th>Description</th>
                    </tr>
                    <c:forEach var="row" items="${rs.rows}">
                        <tr>
                            <td><c:out value="${fn:toUpperCase(row.category)}"/></td>
                            <td><fmt:formatNumber value="${row.spend}" type="currency" currencySymbol="₹"/></td>
                            <td><c:out value="${row.date}"/></td>
                            <td><c:out value="${row.description}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </section>
    </body>
</html>