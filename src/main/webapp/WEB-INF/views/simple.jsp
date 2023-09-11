<%@ page import="com.loan.model.LoanApplicants,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Doctors Details</title>

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

    <div class="container mt-5">
        <div class="row">
            <%
            ArrayList<LoanApplicants> a  = (ArrayList<LoanApplicants>) request.getAttribute("list");
            for (LoanApplicants e : a) {
            %>
            <div class="col-md-4 mb-3">
                
                    <div class="card-body">
                        <!-- Add the name here -->
                        <h5 class="card-title"><%=e.getId()%></h5>
                        
                        <form action="one" method="GET">
                            <input type="hidden" name="doctorid" value="<%= e.getId() %>">
                            <!-- Use a submit button to view the doctor's details -->
                            <button type="submit" class="btn btn-primary">View</button>
                        </form>
                    </div>
            </div>
            <%
            }
            %>
        </div>
    </div>

    <!-- Include Bootstrap JS and jQuery (if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>