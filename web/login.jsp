<%-- https://www.youtube.com/watch?v=t9CPWIm_F-Y
    Document   : login
    Created on : 27 Mar, 2024, 10:15:02 PM
    Author     : RAAGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title>Log In</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">                 
    </head>
    <body style="background-color: rgb(243, 242, 242);">
        <div><%@include file="header.html" %></div>
        <!-- Section: Design Block -->
        <div>
        <section class="lg-section" style="margin-top: 50px; border-color: #000; ">
            <span class="text-center container">
            <div class="card px-2 shadow-lg" style="margin-left:100px; margin-right:100px; border-radius:1rem;">
            <div class="card-body  py-3 px-2" >
        
                <div class="row d-flex justify-content-center">
                <div class="col-md-4">
                    <h2 class="font-weight-bold mb-3">Sign in</h2>
                    <form name="login" method="post" action="Login">               
        
                    <!-- Email input -->
                    <div class="mb-3">
                     <!--   <label class="form-label" for="email">Email address</label> -->
                        <input type="text" name="username" class="form-control" placeholder="Username"/>
                    </div>
        
                    <!-- Password input -->
                    <div class="mb-3">
                      <!--  <label class="form-label" for="pwd">Password</label>-->
                        <input type="password" name="password" class="form-control" placeholder="Password"/>
                    </div>
        
                    <!-- Submit button -->
                    <button type="submit" class="btn btn-success btn-block mb-4">
                        Login
                    </button>
                     <p>Don't have an account? <a href="signup.jsp">Register</a></p>                     

                    </div>
                        
                    </div>
                    </form>
                </div>
                </div>
            </div>
            </div>
            </span>
        </section>
        </div>
        <!-- Section: Design Block -->
    </body>
</html>