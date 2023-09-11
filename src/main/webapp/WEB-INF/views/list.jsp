<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Loan Application List</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Include your custom CSS styles if needed -->
<style>
/* Your custom CSS styles go here */
body {
	background-color: #f4f4f4;
	font-family: Arial, sans-serif;
}

.container {
	margin-top: 50px;
}

h1 {
	text-align: center;
	color: #333;
}

button {
	background-color: #007bff;
	color: #fff;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<h4>ABC Bank</h4>
		<h4>List of Loan Applications</h4>
		<form action="allLoan" method="GET">
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Loan
					Applications</button>
			</div>
		</form>
		<h4>Emi check</h4>
		<form action="emi" method="GET">
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Emi
					Eligiblity check</button>
			</div>
		</form>
	</div>

	<!-- Include Bootstrap JS and jQuery (optional) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>