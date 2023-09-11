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
                </tr>
            </thead>
            <tbody>
                <% LoanApplicants e=(LoanApplicants)request.getAttribute("loan");

                %>
                    <tr>
                        <td><%= e.getId() %></td>
                        <td><%= e.getCustomer() %></td>
                        <td><%= e.getApplicationDate() %></td>
                        <td><%= e.getLoanTypeId() %></td>
                        <td><%= e.getLoanAmount() %></td>
                        <td><%= e.getEmiRangeFrom() %></td>
                        <td><%= e.getEmiRangeTo() %></td>
                        <td><%= e.getNumberOfMonthsRequested() %></td>
                        <td><%= e.getCibilScore() %></td></tr>
                      
                        </tbody></table></div>
</body>
</html>