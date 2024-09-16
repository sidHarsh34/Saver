<%-- 
    Document   : profile
    Created on : 11 Apr, 2024, 9:15:42 PM
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
        <title>Profile</title>
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
                <h2 style="margin-top: 30px"><i class="fas fa-user fa-fw"></i>
                    Profile
                </h2>
                <hr /><br />
                <table class="user-details">
                    <form>
                    <tr>
                        <td>First Name : </td>
                        <td><c:out value="${row.fname}"/></td>
                    </tr>
                    <tr>
                        <td>Last Name : </td>
                        <td><c:out value="${row.lname}"/></td>
                    </tr>
                    <tr>
                        <td>User Name : </td>
                        <td><c:out value="${row.username}"/></td>
                    </tr>
                    <tr>
                        <td>Password : </td>
                        <td><c:out value="${row.password}"/></td>
                    </tr>
                    </form>
                </table>
            </div>
        </div>
        </div>
        </section>
    </body>
</html>
