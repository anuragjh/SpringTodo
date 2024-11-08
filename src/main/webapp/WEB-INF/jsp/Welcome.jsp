<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome JSP</title>
     <link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%@ include file ="common/navbar.jspf" %>
<div class="container">
    <p>
      <h2>Welcome ${name}</h2>
      <a href="todo-list">manage todos</a>
    </p>
      </div>
     <script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
         <script src="webjars\jquery\3.7.1\jquery.min.js"></script>
</body>
</html>