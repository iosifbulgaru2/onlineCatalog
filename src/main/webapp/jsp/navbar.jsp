<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
        <%@ include file="../css/style.css" %>
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/OnlineCatalog">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Catalog
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/OnlineCatalog/ServletProf_Stud_Subj">List grades</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/OnlineCatalog/jsp/add-new-grade.jsp">New grade</a></li>
                        <li><a class="dropdown-item" href="/OnlineCatalog/ServletCatalogWithGradesLessThenFiveActiveMQ">Catalog [Grades < 5] -> ActiveMQ</a></li>
                    </ul>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Students
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/OnlineCatalog/ServletStudents">Students List</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/OnlineCatalog/jsp/add-new-student.jsp">New Student</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Courses
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/OnlineCatalog/ServletCourses">Courses List</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/OnlineCatalog/jsp/add-new-course.jsp">New Course</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Professors
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/OnlineCatalog/ServletProfessors">Professors List</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/OnlineCatalog/jsp/add-new-professor.jsp">New Professor</a>
                        </li>
                    </ul>
            </ul>
            <form class="d-flex my-auto" role="search" method="get" action="?q=filter">
                <input class="form-control me-2" type="search" name="filter" placeholder="Search"
                       aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <%
                Cookie[] cookies = request.getCookies();
                Boolean logged = false;
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("logged")) {
                            logged = true;
                        }
                    }
                }
            %>
            <a class="ms-2 btn btn-outline-secondary" href="ServletLogin">
                <%=logged ? Arrays.stream(request.getCookies()).filter(c ->
                        c.getName().equals("logged")).findFirst().get().getValue() : "Sign In"%>
            </a>
        </div>
    </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>
</html>
