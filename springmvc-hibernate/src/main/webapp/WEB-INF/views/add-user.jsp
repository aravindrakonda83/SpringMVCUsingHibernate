<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>

    <!-- Bootstrap CSS -->
    <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet" />

    <!-- Custom Styles -->
    <style>
        body {
            background-color: #f1f1f1;
            font-family: Arial, sans-serif;
        }

        .main-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 500px;
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            color: #0d6efd;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: 600;
            margin-bottom: 5px;
        }

        .form-control {
            border-radius: 8px;
            padding: 12px;
            font-size: 16px;
        }

        .btn-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }

        .btn-primary {
            width: 100px;
            font-size: 16px;
            padding: 10px;
        }

        .user-list-link {
            font-size: 16px;
            color: #0d6efd;
            text-decoration: none;
        }

        .user-list-link:hover {
            text-decoration: underline;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
            font-size: 14px;
            color: #888888;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .card {
                padding: 20px;
                width: 100%;
            }

            .btn-primary {
                width: 90px;
                font-size: 14px;
            }
        }
    </style>

    <!-- Bootstrap JS and jQuery -->
    <script src="<c:url value='/resources/js/jquery-1.11.1.min.js' />"></script>
    <script src="<c:url value='/resources/js/bootstrap.bundle.min.js' />"></script>
</head>
<body>

    <div class="main-container">
        <div class="card">
            <h2 class="card-title">Add New User</h2>

            <!-- User Form -->
            <form:form method="post" action="save" modelAttribute="user">
                <!-- Hidden Field for ID -->
                <form:hidden path="id" />

                <!-- Name Input -->
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <form:input path="name" id="name" cssClass="form-control" placeholder="Enter full name" />
                </div>

                <!-- Email Input -->
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <form:input path="email" id="email" cssClass="form-control" placeholder="Enter email address" />
                </div>

                <!-- Form Buttons -->
                <div class="btn-group">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="list" class="user-list-link">View User List</a>
                </div>
            </form:form>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Your Company Name | All Rights Reserved</p>
    </div>

</body>
</html>
