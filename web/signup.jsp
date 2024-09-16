<%-- 
    Document   : signup
    Created on : 27 Mar, 2024, 11:11:29 PM
    Author     : RAAGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title>Sign Up</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">        
    </head>
    <body style="background-color: rgb(243, 242, 242);">
        <%@include file="header.html" %>
        <!-- Section: Design Block -->
        <section class="lg-section" style="border-color: #000">
            <span class="container">
            <div class="card shadow-lg" style="margin-right: 100px; margin-left:100px; margin-top: 25px; border-radius:1rem;">
            <div class="card-body py-3 px-2" >
        
                <div class="row d-flex justify-content-center">
                <div class="col-md-6">
                    <h2 class="text-center font-weight-bold mb-3">Register Now</h2>
                    <p style="color: rgba(0, 0, 0, 0.5); text-align: center;">A step to your invested future.   </p>
                    <hr />
                    <form name="signup" method="post" action="signup">       
                        
                        <div class="row">
                            <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <input type="text" name="fname" placeholder="First Name" class="form-control" required/>
                            </div>
                            </div>
                            <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <input type="text" name="lname" placeholder="Last Name" class="form-control" required/>
                            </div>
                            </div>
                        </div>

                    <!-- Username input -->
                    <div class="col mb-2">
                        <input type="text" name="username" placeholder="Username" class="form-control" required/>
                    </div>
        
                    <!-- Password input -->
                    <div class="col mb-2">
                        <input type="password" name="pwd1" placeholder="Password" class="form-control" required/>
                    </div>

                     <!-- Password Confirmation -->
                     <div class="col mb-2">
                        <input type="password" name="pwd2" placeholder="Confirm Password" class="form-control" required/>
                    </div>
                 <!-- Submit button -->
                    <div class="container text-center">
                    <div class="row mb-4 mt-3">
                    <div class="col mx-auto">
                    <input type="submit" class="btn btn-success btn-block mb-2" value="Sign Up" />
                      
                    
                    <input type="reset" class="btn btn-primary btn-block mb-2 mx-3" value="Reset" />

                
                    </div>
                    </div>
                    </div>
                    </form>
                </div>
                </div>
            </div>
            </div>
            </span>
        </section>
        <!-- Section: Design Block -->
    </body>
</html>
