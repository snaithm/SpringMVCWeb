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
                <h1>Registration Result</h1>
                <div class="well">
                    <p>
                        <strong>Name</strong>: ${user.name}
                    </p>
                    <p>
                        <strong>Message</strong>: ${user.message}
                    </p>
                    <p>
                        <strong>Registered At</strong>: ${user.date}
                    </p>
                </div>
            </div>
        </div>
    </body>
</html>
