<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.loan.model.LoanApplicants,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Applicants List</title>

<!-- Include Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1>Loan Applicants List</h1>

		<!-- Filter Form -->
		<form id="filterForm">
			<div class="form-row">
				<div class="form-group col-md-3">
					<label for="minLoanAmount">Min Loan Amount</label> <input
						type="number" class="form-control" id="minLoanAmount"
						name="minLoanAmount">
				</div>
				<div class="form-group col-md-3">
					<label for="maxLoanAmount">Max Loan Amount</label> <input
						type="number" class="form-control" id="maxLoanAmount"
						name="maxLoanAmount">
				</div>
				<div class="form-group col-md-3">
					<label for="startDate">Start Date</label> <input type="date"
						class="form-control" id="startDate" name="startDate">
				</div>
				<div class="form-group col-md-3">
					<label for="endDate">End Date</label> <input type="date"
						class="form-control" id="endDate" name="endDate">
				</div>
				<div class="form-group col-md-3">
					<label for="loanType">Loan Type</label> <select
						class="form-control" id="loanType" name="loanType">
						<option value="">Select Loan Type</option>
						<option value="1">Personal Loan</option>
						<option value="2">Mortgage Loan</option>
						<option value="3">Gold Loan</option>
						<option value="4">House Loan</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<button type="button" class="btn btn-primary" id="applyFilter">Apply
						Filter</button>
				</div>
			</div>
		</form>

		<!-- Loan Applicants Table -->
		<table class="table table-bordered">
			<!-- Table Header -->
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
					<th>Submit</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<LoanApplicants> el = (List<LoanApplicants>) request.getAttribute("list");
				for (LoanApplicants e : el) {
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

					<td>
						<form action="loanlist" method="get">

							<input type="submit" class="btn btn-primary" value="edit">
						</form>
						<form >
							<input type="hidden" name="applicationDate" id="date" value="<%=e.getApplicationDate()%>">
							 <input type="hidden" name="loanAmount" id="amount" value="<%=e.getLoanAmount()%>">
							<input type="hidden" name="numberOfMonthsRequested" id="months" value="<%=e.getNumberOfMonthsRequested()%>">
							 <input type="submit" class="btn btn-primary" value="schedule">
						</form>

					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<form action="excel" method="get">

		<input type="submit" class="btn btn-primary" value="download excel">
	</form>
	<!-- Include Bootstrap JS (optional, for Bootstrap components that require JavaScript) -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!-- Include jQuery for JavaScript functionality -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script>
        // Filter Functionality
        $(document).ready(function () {
            $("#applyFilter").click(function () {
                // Get filter criteria
                var minLoanAmount = parseFloat($("#minLoanAmount").val()) || 0;
                var maxLoanAmount = parseFloat($("#maxLoanAmount").val()) || Infinity;
                var startDate = $("#startDate").val();
                var endDate = $("#endDate").val();
                var selectedLoanType = $("#loanType").val();

                // Loop through table rows and show/hide based on filter criteria
                $("tbody tr").each(function () {
                    var loanAmount = parseFloat($(this).find("td:eq(4)").text()) || 0;
                    var applicationDate = $(this).find("td:eq(2)").text();
                    var loanType = $(this).find("td:eq(3)").text();

                    if (
                        loanAmount >= minLoanAmount &&
                        loanAmount <= maxLoanAmount &&
                        (startDate === "" || applicationDate >= startDate) &&
                        (endDate === "" || applicationDate <= endDate) &&
                        (selectedLoanType === "" || selectedLoanType === loanType)
                    ) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                });
            });
        });
    </script>
</body>
</html>