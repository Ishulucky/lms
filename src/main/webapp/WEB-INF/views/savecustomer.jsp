<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.loan.model.Customer" %>
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

            <tbody>
                <% Customer e=(Customer)request.getAttribute("customer");

                %>
                    <tr>
                        <td><%= e.getCid() %></td>
                        <td><%= e.getFirstName() %></td>
                        <td><%= e.getLastName() %></td>
                         <td><%= e.getDateOfBirth() %></td>
                        <td><%= e.getPanNumber() %></td>
                        <td><%= e.getMobileNumber() %></td>
                        <td><%= e.getAddress() %></td>
                        <td><%= e.getGuardianName() %></td>
                        <td><%= e.getLastUpdatedAt() %></td>
                        <td><%= e.getLastUpdatedBy() %></td>
  </tr>
                      
                        </tbody></table></div>
</body>
</html>