<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.loan.model.LoanApplicantNominees" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="savenominee" method="get">
<div>
				<label for="id">ID:</label> <input type="text" id="nid" name="nid">
				</div>
				<div>
					<label for="nominee">Nominee:</label> <input type="text"
						id="nominee" name="nominee">
				</div>
				<div>
					<label for="relation">Relation:</label> <input type="text"
						id="relation" name="relation">
				</div>
		         <button type="submit">submit</button></form>
</body>
</html>