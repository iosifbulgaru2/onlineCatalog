<%--
  Created by IntelliJ IDEA.
  User: vparasch
  Date: 7/28/2022
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Professor</title>
</head>
<jsp:include page="/jsp/navbar.jsp"/>
<body>
<h3 class="center_brown">Edit Professor</h3>
<br/>
<div class="mx-auto col-lg-3">
    <form action="/OnlineCatalog/ServletProfessors" method="post">
        <div class="form-group">
            <input class="form-control" name='firstName' type='text' placeholder="First Name"/><br/>
        </div>
        <div class="form-group">
            <input class="form-control" name='lastName' type='text' placeholder="Last Name"/><br/>
        </div>
        <div class="form-group">
            <input class="form-control" name='email' type='email' placeholder="Email"/><br/>
        </div>
        <input class="btn btn-success" name='Submit' type='submit'/>
        <a class="btn btn-success" ></a>
    </form>
</div>
</body>
</html>
