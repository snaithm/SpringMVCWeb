<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Maven + Spring MVC</title>
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
			<h1>Home</h1>
			<p>
				Welcome user!
			</p>
			<p>
				Please register to continue
			</p>
			<p>
				<a class="btn btn-primary btn-lg" href="/register/" role="button">Register</a>
			</p>
		  </div>
		</div>
	</body>
</html>