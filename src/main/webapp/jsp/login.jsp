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
  <title>Login Form</title>
</head>
<jsp:include page="/jsp/navbar.jsp"/>
<body>
<h3 class="center_brown">...Log In...</h3>
<br/>
<div class="mx-auto col-lg-3">
  <form action="/OnlineCatalog/ServletLogin" method="post">
    <div class="form-group">
      <input class="form-control" name='username' type='text' placeholder="User Name" required/><br/>
    </div>
    <div class="form-group">
      <input class="form-control" name='password' type='password' placeholder="Password" required/><br/>
    </div>
    <div>
      <input class="btn btn-outline-success btn-sm" name='Submit' type='submit'/>
      <a class="btn btn-outline-primary btn-sm float-right" href="/OnlineCatalog">Cancel</a>
    </div>
  </form>
</div>
</body>
</html>
