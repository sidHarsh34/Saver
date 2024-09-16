<%-- 
    Document   : setLimits
    Created on : 12 Apr, 2024, 11:26:31 PM
    Author     : RAAGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">
        <link href="Styles/style.css" rel="stylesheet"> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Set Limits</title>
    </head>
    <body style="background-color: rgb(243, 242, 242);">
        <%  
            session = request.getSession();
            String userName = (String)session.getAttribute("username");          
        %>
     
        <%@include file="menu.html" %>
        <!-- Section: Design Block -->

            <div class="col-sm-10">
                <h2 style="margin-top: 30px"><i class="fas fa-check-square fa-fw"></i>
                    Set Limits
                </h2>
                <hr /><br />
                <h3> Save by setting your limits </h3><br />
                <form name="setlimits" method="post" action="settingLimits">                
                    <div class="form-group">
                        <select class="form-control" name="category">
                            <option>Select your category</option>
                            <option value="1">Utilities</option>
                            <option value="2">Groceries</option>
                            <option value="3">Entertainment</option>
                            <option value="4">Health</option>
                        </select>
                    </div>
                    <br />
                    <div class="mb-3">
                     <!--   <label class="form-label" for="email">Email address</label> -->
                        <input type="text" name="limit" class="form-control" placeholder="Maximum Expenditure for month"/>
                    </div>
                    
                    <button type="submit" class="btn btn-success btn-block mb-4">
                        Set
                    </button>
                </form>
            </div>
        </section>
    </body>
</html>
