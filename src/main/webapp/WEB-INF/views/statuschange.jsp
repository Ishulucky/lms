<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.loan.model.LoanApplicants"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Applicants List</title>

<!-- Include Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom CSS styling */
.container {
	margin-top: 20px;
}

.table th {
	background-color: #343a40;
	color: #fff;
}

.table tbody tr:nth-child(odd) {
	background-color: #f2f2f2;
}

.table tbody tr:hover {
	background-color: #dcdcdc;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Loan Applicants List</h1>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>LOAN APPLICATION ID</th>
					<th>CUSTOMER ID</th>
					<th>APPLICATION DATE</th>
					<th>LOAN TYPE ID</th>
					<th>LOAN AMOUNT</th>
					<th>EMI RANGE FROM</th>
					<th>EMI RANGE TO</th>
					<th>NUMBER OF MONTHS REQUESTED</th>
					<th>CIBIL SCORE</th>
					<th>LOAN STATUS</th>
					<th>CONCLUSION REMARKS</th>
				</tr>
			</thead>
			<tbody>
				<%
				LoanApplicants e = (LoanApplicants) request.getAttribute("llist");
				%>
				<tr>
					<td><%=e.getId()%></td>
					<td><%=e.getCustomer()%></td>
					<td><%=e.getApplicationDate()%></td>
					<td><%=e.getLoanTypeId()%></td>
					<td><%=e.getLoanAmount()%></td>
					<td><%=e.getEmiRangeFrom()%></td>
					<td><%=e.getEmiRangeTo()%></td>
					<td><%=e.getNumberOfMonthsRequested()%></td>
					<td><%=e.getCibilScore()%></td>
					<td><%=e.getStatus()%></td>
					<td><%=e.getConclusionRemarks()%></td>
				</tr>

			</tbody>
		</table>
	</div>
	<form action="allLoan" method="GET">
		<div class="text-center">
			<button type="submit" class="btn btn-primary">Loan
				Applications</button>
		</div>
	</form>
</body>
</html>