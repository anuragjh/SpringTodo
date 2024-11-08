<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaskMaster</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <style>
        .welcome-header {
            text-align: center;
            margin-top: 20px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-section {
            margin-top: 30px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-submit {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<%@ include file="common/navbar.jspf" %>

<div class="container">
    <div class="welcome-header">
        <h1>Welcome, ${name}!</h1>
        <p class="lead">Organize your tasks efficiently by adding details below.</p>
    </div>

    <div class="form-section">
        <h2>Enter Task Details</h2>
        <form:form method="post" modelAttribute="todo">

            <fieldset class="mb-4">
                <div class="mb-3">
                    <form:label path="description" class="form-label">Description:</form:label>
                    <form:input path="description" type="text" class="form-control"/>
                    <form:errors path="description" cssClass="text-warning"/>
                </div>
            </fieldset>

            <fieldset class="mb-4">
                <div class="mb-3">
                    <form:label path="targetDate" class="form-label">Target Date:</form:label>
                    <form:input path="targetDate" type="text" class="form-control" id="targetDate"/>
                    <form:errors path="targetDate" cssClass="text-warning"/>
                </div>
            </fieldset>

            <button type="submit" name="submit" class="btn btn-primary btn-submit">Add Task</button>
        </form:form>
    </div>

    <p class="text-center mt-4">Keep track of your tasks and stay organized!</p>
</div>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
    $('#targetDate').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true
    });
</script>

</body>
</html>
