<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="/css/index.css">
</head>
<body>
    

    
    <form:form action="/login" method="post" modelAttribute="newLogin">
        <div class="form-group">
            <label>Email:</label> <!-- &nbsp;&nbsp; --><br>
            <form:input path="email" class="form-control" /><br>
            <form:errors path="email" class="text-danger" />
        </div><br>
        <div class="form-group">
            <label>Password:</label><br>
            <form:password path="password" class="form-control" /><br>
            <form:errors path="password" class="text-danger" />
        </div><br><br>
        <div class="submitButton">
        <input type="submit" value="Login" class="btn btn-success" />
        </div>
    </form:form>
    
</body>
</html>