<%@ page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.loan.model.LoanApplicants"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
    LoanApplicants e = (LoanApplicants) request.getAttribute("llist");
    %>
    <%=e.getLoanAmount()%>
    <%=e.getNumberOfMonthsRequested()%>
    <%=e.getApplicationDate()%>

    <input type="hidden" name="applicationDate" id="date"
        value="<%=e.getApplicationDate()%>">
    <input type="hidden" name="loanAmount" id="amount"
        value="<%=e.getLoanAmount()%>">
    <input type="hidden" name="numberOfMonthsRequested" id="months"
        value="<%=e.getNumberOfMonthsRequested()%>">
    <button type="button" class="btn btn-primary" onclick="calculateEMI()">Calculate
        EMI</button>
    <button type="button" class="btn btn-primary"
        onclick="createEmiScheduleTable()">Generate Schedule</button>
    <p id="emiResult"></p>

    <div id="emi-schedule-container"></div>

    <script>
        function calculateEMI() {
            // Get loan amount and number of months from input fields
            const loanAmount = parseFloat(document.getElementById('amount').value);
            const numberOfMonths = parseInt(document.getElementById('months').value);

            const annualInterestRate = 7.2;
            const monthlyInterestRate = annualInterestRate / 12 / 100;

            // Calculate EMI using the formula
            const emi = (loanAmount * monthlyInterestRate * Math.pow(1 + monthlyInterestRate, numberOfMonths)) /
                (Math.pow(1 + monthlyInterestRate, numberOfMonths) - 1);

            // Display the calculated EMI
            document.getElementById('emiResult').innerHTML = 'EMI: ' + emi.toFixed(2);
        }

        function createEmiScheduleTable() {
            const numberOfMonths = parseInt(document.getElementById('months').value);
            const emi = parseFloat(document.getElementById('emiResult').textContent.split(': ')[1]);
            
            // Clear previous content in the container
            const tableContainer = document.getElementById('emi-schedule-container');
            tableContainer.innerHTML = '';

            // Create a table element
            const table = document.createElement('table');
            table.className = 'table table-striped';
            
            // Create the table header
            const thead = table.createTHead();
            const headerRow = thead.insertRow();
            const headers = ['Date', 'EMI', 'Cumulative'];
            headers.forEach(headerText => {
                const th = document.createElement('th');
                th.textContent = headerText;
                headerRow.appendChild(th);
            });

            // Calculate and add rows for each month
            const currentDate = new Date(document.getElementById('date').value);
            let cumulativeAmount = 0;
            for (let i = 0; i < numberOfMonths; i++) {
                const row = table.insertRow();
                const dateCell = row.insertCell(0);
                const emiCell = row.insertCell(1);
                const cumulativeCell = row.insertCell(2);

                dateCell.textContent = currentDate.toLocaleDateString();
                emiCell.textContent = emi.toFixed(2);
                cumulativeAmount += emi;
                cumulativeCell.textContent = cumulativeAmount.toFixed(2);

                // Move to the next month
                currentDate.setMonth(currentDate.getMonth() + 1);
            }

            // Append the table to the container
            tableContainer.appendChild(table);
        }
    </script>
</body>
</html>
