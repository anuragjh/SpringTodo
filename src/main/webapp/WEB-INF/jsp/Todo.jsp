<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaskMaster</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Page Styles */
        body {
            background-color: #f3f4f6;
            font-family: Arial, sans-serif;
        }
        .welcome-banner {
            background-image: linear-gradient(135deg, #d1ccd7 0%, #797d84 100%);
            color: #fff;
            text-align: center;
            padding: 40px 20px;
            margin-top: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }
        .welcome-banner h1 {
            font-size: 2.5rem;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .welcome-banner p {
            font-size: 1.25rem;
            margin-bottom: 0;
        }
        .todo-section {
            margin-top: 40px;
        }
        .todo-table {
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }
        .table thead {
            background-color: #343a40;
            color: #fff;
        }
        .table-hover tbody tr:hover {
            background-color: #f1f3f5;
        }
        .btn-task {
            margin-top: 20px;
            font-size: 1.1rem;
        }
        .footer-text {
            margin-top: 30px;
            color: #6c757d;
            text-align: center;
            font-size: 0.95rem;
        }
        /* Button Styles */
        .btn-warning, .btn-success {
            margin-right: 5px;
            transition: background-color 0.3s;
        }
        .btn-warning:hover {
            background-color: #ff9800;
        }
        .btn-success:hover {
            background-color: #28a745;
        }
    </style>
</head>
<body>

<%@ include file="common/navbar.jspf" %>

<div class="container">
    <div class="welcome-banner">
        <h1>Welcome, ${name}!</h1>
        <p>Stay organized and accomplish your tasks efficiently!</p>
    </div>

    <div class="todo-section">
        <h2 class="text-secondary">Your Todo List</h2>
        <p>Keep track of your tasks, deadlines, and progress in the list below.</p>

        <table class="table table-hover todo-table">
            <thead>
            <tr>
                <th>Description</th>
                <th>Target Date</th>
                <th>Completed</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>
                            <span class="badge ${todo.done ? 'bg-success' : 'bg-danger'}">
                                <c:choose>
                                    <c:when test="${todo.done}">Yes</c:when>
                                    <c:otherwise>No</c:otherwise>
                                </c:choose>
                            </span>
                    </td>
                    <td>
                        <a href="delete-todo?id=${todo.id}" class="btn btn-warning btn-sm" onclick="return confirm('Are you sure you want to delete this todo?')">Delete</a>
                        <a href="update-todo?id=${todo.id}" class="btn btn-success btn-sm">Update</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <a href="add-todo" class="btn btn-primary btn-task">+ Add New Task</a>
        <p class="footer-text">Stay organized and on top of your tasks!</p>
    </div>
</div>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
</body>
</html>
