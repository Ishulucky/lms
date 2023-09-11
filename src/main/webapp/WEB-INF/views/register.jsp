<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
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
        <h2>Registration</h2>
        <form action="saveuser" method="get">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username">
            </div>
            
            <div class="form-group">
                <label for="usertype">User Type:</label>
                <select class="form-control" id="usertype" name="userType">
                    <option value="ADMN">Admin</option>
                    <option value="CUST">Customer</option>
                </select>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
            </div>
            <div class="form-group">
                <label for="useremail">User Email:</label>
                <input type="email" class="form-control" id="useremail" name="userEmail" placeholder="Enter your email">
            </div>
            <div class="form-group">
                <label for="recoveryemail">Recovery Email:</label>
                <input type="email" class="form-control" id="recoveryemail" name="userRecoveryEmail" placeholder="Enter your recovery email">
            </div>
            <div class="form-group">
                <label for="usermobile">User Mobile:</label>
                <input type="tel" class="form-control" id="usermobile" name="userMobile" placeholder="Enter your mobile number">
            </div>
            <button type="submit" class="btn btn-success">Register</button>
        </form>
    </div>
</body>
</html>