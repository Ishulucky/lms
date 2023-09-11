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
<div class="container">
        <h1>Loan Applicants List</h1>
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Nominee()</th>
                    <th>Relation</th>

                </tr>
            </thead>
            <tbody>
                <% LoanApplicantNominees e=(LoanApplicantNominees)request.getAttribute("nominee");

                %>
                    <tr>
                        <td><%= e.getNid() %></td>
                        <td><%= e.getNominee() %></td>
                        <td><%= e.getRelation() %></td>
  </tr>
                      
                        </tbody></table></div>
</body>
</html>