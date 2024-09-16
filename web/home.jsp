<%-- 
    Document   : home
    Created on : 10 Apr, 2024, 10:51:56 PM
    Author     : RAAGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">
    <link href="Styles/style.css" rel="stylesheet"> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Home</title>
</head>
<body style="background-color: rgb(243, 242, 242);">
    <%@include file="header.html" %>
    <!-- Section: Design Block -->
    <section>            
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2 rounded-right">
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="Dashboard.jsp">
                                <i class="fas fa-tachometer-alt fa-fw"></i>
                                Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#demo">
                                <i class="fas fa-line-chart fa-fw"></i>
                                Expenses
                            </a>
                            <div id="demo" class="collapse">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="setLimits.jsp" style="font-size:18px">Set Limits</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="manageExpenses.jsp" style="font-size:18px">Manage Expenses</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="trackExpenses.jsp" style="font-size:18px">Track Expenses</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="profile.jsp">
                                <i class="fas fa-user fa-fw"></i>
                                Profile
                            </a>
                        </li>
                        <li class="nav-item">
                                <a class="nav-link" href="LogOut">
                                    <i class="fas fa-sign-out fa-fw"></i>
                                    Log Out
                                </a>
                        </li>
                    </ul>                   
                </div>
                <div class="col-sm-10">
                    <img src="Images/mainlogo.png" style="align-items: center"/>
                </div>
            </div>
        </div> 
    </section>
    
    
</body>
</html>
