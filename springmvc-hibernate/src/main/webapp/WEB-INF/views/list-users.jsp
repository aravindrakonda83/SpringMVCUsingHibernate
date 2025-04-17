<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>

    <!-- Bootstrap CSS -->
    <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet" />

    <!-- Custom Styles -->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        h2 {
            text-align: center;
            color: #0d6efd;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        th, td {
            text-align: center;
            padding: 12px;
        }

        th {
            background-color: #0d6efd;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table-bordered {
            border: 1px solid #dee2e6;
        }

        .btn-add {
            display: block;
            width: 200px;
            margin: 30px auto;
            text-align: center;
            background-color: #0d6efd;
            color: white;
            padding: 12px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
        }

        .btn-add:hover {
            background-color: #0a58ca;
        }

        .footer {
            text-align: center;
            font-size: 14px;
            color: #888888;
            margin-top: 50px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                margin-top: 30px;
            }

            h2 {
                font-size: 20px;
            }

            table {
                font-size: 14px;
            }

            .btn-add {
                width: 180px;
                font-size: 14px;
            }
        }
    </style>

    <!-- Bootstrap JS and jQuery -->
    <script src="<c:url value='/resources/js/jquery-1.11.1.min.js' />"></script>
    <script src="<c:url value='/resources/js/bootstrap.bundle.min.js' />"></script>
</head>
<body>

    <div class="container">
        <h2>All Users</h2>

        <!-- User Table -->
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Add New User Button -->
        <a href="add" class="btn-add">Add New User</a>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Your Company Name | All Rights Reserved</p>
    </div>

</body>
</html>
