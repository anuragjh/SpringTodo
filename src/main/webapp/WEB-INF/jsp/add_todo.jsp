<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
    <link href="webjars\bootstrap-datepicker\1.9.0\css\bootstrap-datepicker.standalone.min.css" rel="stylesheet">
</head>
<body>
<%@ include file ="common/navbar.jspf" %>
    <h1>Welcome  ${name}!</h1>
    <hr>
<div class="container">

    <h2>Enter Task Details</h2>
     <form:form method="post" modelAttribute="todo">

     <fieldset class="mb-4">
     <form:label path="description">Description : </form:label>
     <form:input path="description" type="text"/>
     <form:errors path="description" cssClass="text-warning"/>
     </fieldset>

     <fieldset class="mb-4">
     <form:label path="targetDate">Target Date : </form:label>
     <form:input path="targetDate" type="text"/>
     <form:errors path="targetDate" cssClass="text-warning"/>
     </fieldset>


     <input type="submit" name="submit">
     </form:form>

    <p>Keep track of your tasks and stay organized!</p>
  </div>
    <script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
     <script src="webjars\jquery\3.7.1\jquery.min.js"></script>
     <script src="webjars\bootstrap-datepicker\1.9.0\js\bootstrap-datepicker.min.js"></script>
     <script type="text/javascript">
     $('#targetDate').datepicker({
         format: 'yyyy-mm-dd'
     });
     </script>


</body>
</html>
