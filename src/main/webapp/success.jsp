<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <!-- Bootstrap CDN link -->
    <script type="text/javascript">
        function redirectToPage() {
            window.location.href = "AppointmentScheduling.jsp";  // Replace with your target JSP page
        }
    </script>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h2 class="card-title text-success">Success!</h2>
                        <p class="card-text">Your details have been saved successfully.</p>
                        <button class="btn btn-primary" onclick="redirectToPage()">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zyS8Hpn6q6Nq6FEL6gH5FdyH5RQQJ5p3Hj70a9l2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-KJ3o2DKtIkvYIKbDvqIYYSfutbd4h0S49jMNfj7i5sy6jjYciYwIh2C+4PfK0kh9" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</body>
</html>
