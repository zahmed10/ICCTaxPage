<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="/css/index.css">
</head>
<body>
    
    <form:form action="/register" method="post" modelAttribute="newUser">
        <div class="form-group">
            <label>User Name:</label><br>
            <form:input path="userName" class="form-control" /><br>
            <form:errors path="userName" class="text-danger" />
        </div><br>
        <div class="form-group">
            <label>Email:</label><br>
            <form:input path="email" class="form-control" /><br>
            <form:errors path="email" class="text-danger" />
        </div><br>
        <div class="form-group">
            <label>Password:</label><br>
            <form:password path="password" class="form-control" /><br>
            <form:errors path="password" class="text-danger" />
        </div><br>
        <div class="form-group">
            <label>Confirm Password:</label><br>
            <form:password path="confirm" class="form-control" /><br>
            <form:errors path="confirm" class="text-danger" />
        </div><br>
        <div class="submitButton2">
        <input type="submit" value="Register" class="btn btn-primary" />
        </div>
    </form:form>
    
   
    
</body>
</html>