<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Greeting</title>
    <spring:url value="/resources/core/css/hello.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <spring:url value="/resources/core/css/hello.js" var="coreJs" />
    <spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />
    <script src="${coreJs}"></script>
    <script src="${bootstrapJs}"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Home</a>
        </div>
    </div>
</nav>

<div class="jumbotron">
    <div class="container">
        <h1>Register</h1>
        <p>Please enter your details</p>
        <form:form method="POST" modelAttribute="register">
        <div class="well">
            <p>
                <form:label path="name">Name:</form:label>
                <br>
                <form:input path="name" />
            </p>
            <p>
                <form:label path="message">Message:</form:label>
                <br>
                <form:input path="message" />
            </p>
        </div>
            <p>
                <input type="submit" class="btn btn-primary btn-lg" value="Submit"/>
            </p>
        </form:form>
    </div>
</div>
</body>
<script>
    $(document).ready(function() {
        document.getElementById("name").focus();
    });
</script>
</html>
