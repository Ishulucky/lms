<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.loan.model.LoanApplicants" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="save" method="get">
				<div>
					<label for="id">ID:</label> <input type="text" id="id" name="id">
				</div>
				<div>
					<label for="customer">Customer ID:</label> <input type="text"
						id="customer" name="customer">
				</div>
				<div>
					<label for="applicationDate">Application Date:</label> <input
						type="text" id="applicationDate" name="applicationDate">
				</div>
				<div>
					<label for="loanType">Loan Type ID:</label> <input type="text"
						id="loanType" name="loanTypeId">
				</div>
				<div>
					<label for="loanAmount">Loan Amount:</label> <input type="text"
						id="loanAmount" name="loanAmount">
				</div>
				<div>
					<label for="emiRangeFrom">EMI Range (From):</label> <input
						type="text" id="emiRangeFrom" name="emiRangeFrom">
				</div>
				<div>
					<label for="emiRangeTo">EMI Range (To):</label> <input type="text"
						id="emiRangeTo" name="emiRangeTo">
				</div>
				<div>
					<label for="numberOfMonthsRequested">Number of Months
						Requested:</label> <input type="text" id="numberOfMonthsRequested"
						name="numberOfMonthsRequested">
				</div>
				<div>
					<label for="cibilScore">CIBIL Score:</label> <input type="text"
						id="cibilScore" name="cibilScore">
				</div>
				<div>
					<label for="status">Status:</label> <input type="text" id="status"
						name="status">
				</div>
				<div>
					<label for="conclusionRemarks">Conclusion Remarks:</label> <input
						type="text" id="conclusionRemarks" name="conclusionRemarks">
				</div>
				<div>
					<label for="processedUser">Processed User:</label> <input
						type="text" id="processedUser" name="lastprocesseduser">
				</div>
				<div>
					<label for="processedDate">Processed Date:</label> <input
						type="text" id="processedDate" name="processedDate">
			</div>
		         <button type="submit">submit</button></form>
</body>
</html>