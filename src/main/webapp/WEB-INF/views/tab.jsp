<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>tab</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/css/bootstrap.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.form-container {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	padding: 20px;
	margin: 20px auto;
	max-width: 800px;
}

.tabs {
	display: flex;
	justify-content: space-between;
	margin-bottom: 20px;
}

.tab {
	flex: 1;
	text-align: center;
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px;
	cursor: pointer;
	border-radius: 5px;
}

.tab.active-tab {
	background-color: #0056b3;
}

.form-box {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

.form-button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	margin-top: 10px;
	border-radius: 5px;
	cursor: pointer;
}

h2 {
	color: #111111;
}

.form-part div {
	margin-bottom: 10px;
}

.form-part label {
	font-weight: bold;
}

.form-part input[type="text"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}
</style>
</head>
<body>
	<center>
		<h2 style="color: black; font-size: 40px;">Loan Application</h2>
	</center>
	<div class="form-container">
		<div class="tabs">
			<button class="tab" onclick="showTab(0)">Customer details</button>
			<button class="tab" onclick="showTab(1)">Loan Application</button>
			<button class="tab" onclick="showTab(2)">Nominee</button>
			<button class="tab">Preview</button>
		</div>
		<script>
        let currentTab = 0;

        function showTab(tabIndex) {
            const formParts = document.querySelectorAll('.form-part');
            formParts[currentTab].style.display = 'none';
            formParts[tabIndex].style.display = 'block';

            // Remove the 'active-tab' class from all tab buttons
            const tabButtons = document.querySelectorAll('.tab');
            tabButtons.forEach(button => button.classList.remove('active-tab'));

            // Add the 'active-tab' class to the current tab button
            tabButtons[tabIndex].classList.add('active-tab');

            currentTab = tabIndex;
        }

        function nextTab(tabIndex) {
            const form = document.getElementById(`form-part-${tabIndex + 1}`);
            if (form.checkValidity()) {
                showTab(tabIndex + 1);
            } else {
                alert('Please fill in all required fields.');
            }
        }

        function prevTab(tabIndex) {
            showTab(tabIndex - 1);
        }
    </script>

		<!-- stating of first tab -->
		<div class="form-box">
			<div class="form-part">
				<h2>CUSTOMER DETAILS</h2>
				<div>
					First Name:<input type="text" id="firstName1" name="firstName">
				</div>
				<div>
					Last Name: <input type="text" id="lastName1" name="lastName">
				</div>
				<div>
					Date of Birth:<input type="text" id="dateOfBirth1"
						name="dateOfBirth">
				</div>
				<div>
					PAN Number:<input type="text" id="panNumber1" name="panNumber">
				</div>
				<div>
					Mobile Number:<input type="text" id="mobileNumber1"
						name="mobileNumber">
				</div>
				<div>
					Address:<input type="text" id="address1" name="address">
				</div>
				<div>
					Guardian Name:<input type="text" id="guardianName1"
						name="guardianName">
				</div>
				<button class="form-button" type="button" onclick="nextTab(0)">Next</button>
			</div>


			<!-- starting of the second tab-->
			<div class="form-part" style="display: none;">
				<h2>Loan Details</h2>
				<div>
					<label for="applicationDate">Application Date:</label> <input
						type="text" id="applicationDate1" name="applicationDate">
				</div>
				<div>
					<label for="loanType">Loan Type ID:</label> <input type="text"
						id="loanType1" name="loanTypeId">
				</div>
				<div>
					<label for="loanAmount">Loan Amount:</label> <input type="text"
						id="loanAmount1" name="loanAmount">
				</div>
				<div>
					<label for="emiRangeFrom">EMI Range (From):</label> <input
						type="text" id="emiRangeFrom1" name="emiRangeFrom">
				</div>
				<div>
					<label for="emiRangeTo">EMI Range (To):</label> <input type="text"
						id="emiRangeTo1" name="emiRangeTo">
				</div>
				<div>
					<label for="numberOfMonthsRequested">Number of Months
						Requested:</label> <input type="text" id="numberOfMonthsRequested1"
						name="numberOfMonthsRequested">
				</div>
				<button class="form-button" type="button" onclick="prevTab(1)">Back</button>
				<button class="form-button" type="button" onclick="nextTab(1)">Next</button>
			</div>


			<!-- starting of third tab -->
			<div class="form-part" style="display: none;">
				<h2>NOMINEE FORM</h2>
				<div>
					<label for="nominee">Nominee:</label> <input type="text"
						id="nominee1" name="nominee">
				</div>
				<div>
					<label for="relation">Relation:</label> <input type="text"
						id="relation1" name="relation">
				</div>

				<button class="form-button" type="button" onclick="prevTab(2)">Back</button>
				<button class="form-button" type="button" onclick="getPreview()">Preview</button>
			</div>


			<form action="updation" id="form-part-1" method="get">
				<div class="form-part" style="display: none;">
					<h2>lets get checked</h2>
					<h2>CUSTOMER DETAILS</h2>
					<div>
						First Name:<input id="firstName" name="firstName">
					</div>
					<div>
						Last Name: <input id="lastName" name="lastName">
					</div>
					<div>
						Date of Birth:<input id="dateOfBirth" name="dateOfBirth">
					</div>
					<div>
						PAN Number: <input id="panNumber" name="panNumber">
					</div>
					<div>
						Mobile Number:<input id="mobileNumber" name="mobileNumber">
					</div>
					<div>
						Address:<input id="address" name="address">
					</div>
					<div>
						Guardian Name:<input id="guardianName" name="guardianName">
					</div>

					<h2>Loan Details</h2>
					<div>
						Application Date:<input id="applicationDate"
							name="applicationDate">
					</div>
					<div>
						Loan Type ID:<input id="loanType" name="loanTypeId">
					</div>
					<div>
						Loan Amount:<input id="loanAmount" name="loanAmount">
					</div>
					<div>
						EMI Range (From): <input id="emiRangeFrom" name="emiRangeFrom">
					</div>
					<div>
						EMI Range (To): <input id="emiRangeTo" name="emiRangeTo">
					</div>
					<div>
						Number of Months Requested <input id="numberOfMonthsRequested"
							name="numberOfMonthsRequested">
					</div>

					<h2>NOMINEE FORM</h2>
					<div>
						Nominee:<input id="nominee" name="nominee">
					</div>
					<div>
						Relation: <input id="relation" name="relation">
					</div>


					<br>
					<button class="form-button" type="button" onclick="prevTab(1)">Edit</button>
					<button class="form-button" type="submit">Submit</button>
				</div>
			</form>
		</div>
	</div>
	<br>
	<br>
	<script>
        function getPreview() {
            nextTab(2);
            document.getElementById("firstName").value = document.getElementById("firstName1").value;
            document.getElementById("lastName").value = document.getElementById("lastName1").value;
            document.getElementById("dateOfBirth").value = document.getElementById("dateOfBirth1").value;
            document.getElementById("panNumber").value = document.getElementById("panNumber1").value;
            document.getElementById("mobileNumber").value = document.getElementById("mobileNumber1").value;
            document.getElementById("address").value = document.getElementById("address1").value;
            document.getElementById("guardianName").value = document.getElementById("guardianName1").value;
            document.getElementById("applicationDate").value = document.getElementById("applicationDate1").value;
            document.getElementById("loanType").value = document.getElementById("loanType1").value;
            document.getElementById("loanAmount").value = document.getElementById("loanAmount1").value;
            document.getElementById("emiRangeFrom").value = document.getElementById("emiRangeFrom1").value;
            document.getElementById("emiRangeTo").value = document.getElementById("emiRangeTo1").value;
            document.getElementById("numberOfMonthsRequested").value = document.getElementById("numberOfMonthsRequested1").value;
            document.getElementById("nominee").value = document.getElementById("nominee1").value;
            document.getElementById("relation").value = document.getElementById("relation1").value;
        }
    </script>
</body>
</html>