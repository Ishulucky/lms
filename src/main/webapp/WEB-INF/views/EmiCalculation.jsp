<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Loan EMI Calculator</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS styling */
        .container {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        button {
            margin-top: 15px;
        }

        #results {
            margin-top: 20px;
        }

        #eligibilityResult {
            font-weight: bold;
        }
    </style>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Loan EMI Calculator</h1>

        <!-- Form inputs -->
        <div class="form-group">
            <label for="principal">Principal Loan Amount (Rs):</label>
            <input type="number" class="form-control" id="principal" placeholder="Enter Principal Amount">
        </div>

        <div class="form-group">
            <label for="interestRate">Annual Interest Rate (%):</label>
            <input type="number" class="form-control" id="interestRate" placeholder="Enter Annual Interest Rate">
        </div>

        <div class="form-group">
            <label for="tenure">Loan Tenure in Months:</label>
            <input type="number" class="form-control" id="tenure" placeholder="Enter Loan Tenure">
        </div>

        <div class="form-group">
            <label for="salary">Monthly Salary (Rs):</label>
            <input type="number" class="form-control" id="salary" placeholder="Enter Monthly Salary">
        </div>

        <div class="form-group">
            <label for="emiRangeFrom">EMI Range From (Rs):</label>
            <input type="number" class="form-control" id="emiRangeFrom" placeholder="Enter EMI Range From">
        </div>

        <div class="form-group">
            <label for="emiRangeTo">EMI Range To (Rs):</label>
            <input type="number" class="form-control" id="emiRangeTo" placeholder="Enter EMI Range To">
        </div>

        <button class="btn btn-primary btn-block" onclick="calculateEMI()">Calculate EMI</button>

        <!-- Results section -->
        <div id="results">
            <h2 class="text-center">Results</h2>
            <p>EMI per Month: <span id="emiAmount"></span></p>
            <p>Total Amount Payable: <span id="totalAmount"></span></p>
            <p>Total Interest Amount: <span id="interestAmount"></span></p>
        </div>

        <!-- Eligibility check section -->
        <div class="form-group">
            <button class="btn btn-primary btn-block" onclick="checkEligibility()">Check Eligibility</button>
            <p id="eligibilityResult" class="text-center"></p>
        </div>

        <!-- Calculate tenure based on EMI range section -->
        <div class="form-group">
            <button class="btn btn-primary btn-block" onclick="calculateTenureBasedOnEMIRange()">Calculate Tenure Based on EMI Range</button>
            <p id="tenureBasedOnEMIRange" class="text-center"></p>
        </div>
    </div>
    <script>
        function calculateEMI() {
            const principal = parseFloat(document.getElementById('principal').value);
            const interestRate = parseFloat(document.getElementById('interestRate').value) || 7.2; // Default interest rate of 7.2% if not provided
            const tenure = parseFloat(document.getElementById('tenure').value);

            const monthlyInterestRate = interestRate / 12 / 100;
            const emi = (principal * monthlyInterestRate * Math.pow(1 + monthlyInterestRate, tenure)) /
                (Math.pow(1 + monthlyInterestRate, tenure) - 1);

            const totalAmount = emi * tenure;
            const interestAmount = totalAmount - principal;

            document.getElementById('emiAmount').textContent = "Rs" + emi.toFixed(2);
            document.getElementById('totalAmount').textContent = 'Rs' + totalAmount.toFixed(2);
            document.getElementById('interestAmount').textContent = 'Rs' + interestAmount.toFixed(2);
        }

        function checkEligibility() {
            const emi = parseFloat(document.getElementById('emiAmount').textContent.replace('Rs', ''));
            const salary = parseFloat(document.getElementById('salary').value);
            const disposalAmount = 0.5 * salary;

            if (emi > disposalAmount) {
                document.getElementById('eligibilityResult').textContent = 'You are not eligible for this loan process.';
            } else {
                document.getElementById('eligibilityResult').textContent = 'You are eligible for this loan.';
            }
        }

        function calculateTenureBasedOnEMIRange() {
            const principal = parseFloat(document.getElementById('principal').value);
            const interestRate = parseFloat(document.getElementById('interestRate').value) || 7.2; // Default interest rate of 7.2% if not provided
            const emiRangeFrom = parseFloat(document.getElementById('emiRangeFrom').value);
            const emiRangeTo = parseFloat(document.getElementById('emiRangeTo').value);

            let tenure = 1;
            let emi = 0;
            const monthlyInterestRate = interestRate / 12 / 100;

            while (tenure <= 360) { // Assuming a maximum tenure of 30 years (360 months)
                emi = (principal * monthlyInterestRate * Math.pow(1 + monthlyInterestRate, tenure)) /
                    (Math.pow(1 + monthlyInterestRate, tenure) - 1);

                if (emi >= emiRangeFrom && emi <= emiRangeTo) {
                    document.getElementById('tenureBasedOnEMIRange').textContent =
                        tenure + " months";
                    break;
                }

                tenure++;
            }

            if (tenure > 360) {
                document.getElementById('tenureBasedOnEMIRange').textContent =
                    `No tenure found within the specified EMI range.`;
            }
        }
    </script>
</body>
</html>
