<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaskMaster</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .welcome-section {
            text-align: center;
            padding: 50px 0;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .welcome-text {
            font-size: 1.2em;
            margin-top: 20px;
            color: #555;
        }
        .btn-todo {
            margin-top: 30px;
        }
    </style>
</head>
<body>

<%@ include file="common/navbar.jspf" %>

<div class="container">
    <div class="welcome-section mt-5">
        <h2 class="display-4">Welcome, ${name}!</h2>
        <p class="welcome-text">We're glad to have you back. Explore and manage your tasks efficiently with your personalized dashboard.</p>
        <p class="welcome-text">Need help staying organized? Start managing your todos below and take control of your productivity.</p>
        <a href="todo-list" class="btn btn-primary btn-lg btn-todo">Manage Todos</a>
    </div>
</div>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
</body>
</html>
