<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project4.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: hsl(0, 0%, 96%);
        }

        .container-fluid {
            background-color: white;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .card {
            border-radius: 15px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 500px;
        }

        .btn-custom:focus {
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
            outline: none;
        }

        .btn-primary {
            --bs-btn-bg: #00B3AB;
            --bs-btn-border-color: #00B3AB;
            --bs-btn-hover-border-color: #00B3AB;
        }

        .container {
            justify-content: center;
            width: 100px;
        }

        .text-primary {
            --bs-text-opacity: 1;
            color: #d85427 !important;
        }

        .elementor-element {
            background-color: #01696b;
            color: white;
            text-align: center;
        }

        footer {
            padding: 20px 0;
            text-align: center;
            background-color: #f8f9fa;
            border-top: 1px solid #dee2e6;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <!-- Navbar start -->
    <div class="container-fluid nav-bar">
        <div class="container">
            <nav class="navbar navbar-light navbar-expand-lg py-4">
                <a href="index.html" class="navbar-brand">
                    <h1 class="text-primary fw-bold mb-0">Logo</h1>
                </a>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Section: Design Block -->
    <section class="">
        <!-- Section: Design Block -->
        <div class="px-4 py-5 px-md-5 text-center text-lg-start">
            <div class="container">
                <div class="d-flex justify-content-center">
                    <!-- row of two elements, form and content-->
                    <div class="row gx-lg-5 align-items-center">
                        <!-- Form column div -->
                        <div class="col-lg-6 mb-5 mb-lg-0">
                            <!-- Card div -->
                            <div class="card">
                                <div class="card-body py-5 px-md-5">
                                    <div>
                                        <h1 class="form-header_header__UhqWw" style="text-align: center;">Sign in to your account.</h1>
                                        <p class="form-header_description__2ic93" style="text-align: center;">
                                            <span>Build skills for today, tomorrow, and beyond.<br>
                                                Education to future-proof your career.</span>
                                        </p>
                                    </div>
                                    <div class="or-separator_contain__3YaFK" style="text-align: center;">
                                        _____________________________________________________
                                    </div>
                                    <br>
                                    <form id="login-form" action="LoginServlet" method="post">
                                        <!-- Username input -->
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="username">Email</label>
                                            <input type="text" id="username" class="form-control" />
                                            <span id="usernameError" style="color: rgb(128, 125, 125);"></span>
                                        </div>
                                        <!-- Password input -->
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="password">ID</label>
                                            <input type="password" id="password" class="form-control" />
                                            <span id="passwordError" style="color: red;"></span>
                                        </div>
                                        <div class="tos-blurb">
                                            <span>By clicking "Log In," you agree to our <a href="https://www.udacity.com/legal/terms-of-service">Terms of Use</a> and our <a href="https://www.udacity.com/legal/privacy">Privacy Policy</a>.</span>
                                        </div>
                                        <br>
                                        <br>
                                        <!-- Submit button -->
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Login</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Content column div -->
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="elementor-element">
        <p style="font-weight: bold;">&copy; 2024 Logo. All rights reserved.</p>
        <br>
        <p style="float: inherit;"><a>Privacy Policy</a> &nbsp; | &nbsp; <a>Terms & Conditions</a></p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <script>
        document.getElementById("login-form").addEventListener("submit", function (event) {
            event.preventDefault(); // Prevent the form from submitting normally

            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;

            // Check email path for admin or student
            const emailPath = username.split("@")[1]; // Assuming username is the email

            if (emailPath === "admin.com") {
                // Admin login logic
                alert("Welcome Admin!");
                sessionStorage.setItem("userRole", "admin"); // Set session storage
                window.location.href = "HomePage.aspx";
            } else if (emailPath === "student.com") {
                // Student login logic
                alert("Welcome Student!");
                sessionStorage.setItem("userRole", "student"); // Set session storage
                window.location.href = "HomePage.aspx";
            } else {
                alert("Invalid email format. Please use @admin.com or @student.com");
            }
        });
    </script>

</body>
</html>


