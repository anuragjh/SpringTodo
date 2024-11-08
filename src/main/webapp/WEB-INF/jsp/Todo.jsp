<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file ="common/navbar.jspf" %>

    <h1>Welcome  ${name}!</h1>
    <hr>
<div class="container">



    <h2>Your Todo List</h2>
    <p>Below is a list of your tasks, including descriptions, target dates, and completion status.</p>


    <table class="table">
        <thead>
            <tr>
                <th>Task Name</th>
                <th>Description</th>
                <th>Target Date</th>
                <th>Completed</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.name}</td>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>
                        <c:choose>
                            <c:when test="${todo.done}">Yes</c:when>
                            <c:otherwise>No</c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <a href="delete-todo?id=${todo.id}" class="btn btn-warning" onclick="return confirm('Are you sure you want to delete this todo?')">
                            DELETE
                        </a>
                    </td>
                   <td>
                          <a href="update-todo?id=${todo.id}" class="btn btn-success">
                             UPDATE
                          </a>
                   </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="add-todo" class="btn btn-success">Add Task</a>

    <p>Keep track of your tasks and stay organized!</p>
  </div>
    <script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
     <script src="webjars\jquery\3.7.1\jquery.min.js"></script>
</body>
</html>
