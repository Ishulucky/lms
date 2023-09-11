<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.loan.model.Customer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer</title>
</head>
<body>
<form action="savecustomer" method="get">
                <div>
					id: <input type="text" id="cid" name="cid">
				</div>
                <div>
				First Name:<input type="text" id="firstName" name="firstName">
				</div>
				<div>
					Last Name: <input type="text" id="lastName" name="lastName">
				</div>
				<div>
					Date of Birth:<input type="text" id="dateOfBirth"
						name="dateOfBirth">
				</div>
				<div>
					PAN Number:<input type="text" id="panNumber" name="panNumber">
				</div>
				<div>
					Mobile Number:<input type="text" id="mobileNumber"
						name="mobileNumber">
				</div>
				<div>
					Address:<input type="text" id="address" name="address">
				</div>
				<div>
					Guardian Name:<input type="text" id="guardianName"
						name="guardianName">
				</div>
				<div>
					Last Updated At:<input type="text" id="lastUpdatedAt"
						name="lastUpdatedAt">
				</div>
				<div>
					Last Updated By:<input type="text" id="lastUpdatedBy"
						name="lastUpdatedBy">
				</div>
		         <button type="submit">submit</button></form>
</body>
</html>