<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login and Registration</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS styling */
        body {
            background-color: #f5f5f5;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }
        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login or Register</h2>
        <form>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username">
            </div>
            <div class="form-group">
                <label for="usertype">User Type:</label>
                <select class="form-control" id="usertype" name="usertype">
                    <option value="ADMN">Admin</option>
                    <option value="CUST">Customer</option>
                </select>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <button type="button" class="btn btn-success" onclick="register()">Register</button>
        </form>
    </div>
    <script>
        function register() {
        	 window.location.href = "register";
            
        }
    </script>
</body>
</html>