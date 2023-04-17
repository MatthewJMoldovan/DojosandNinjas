<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="w-75 p-4 mx-auto">
		<div class="shadow mb-4 rounded border p-4 text-start">
			<form:form action="/process/createDojo" method="POST" modelAttribute="newDojo">
				<div class="formGroup">
					<div>
						<form:label path="dojoName"> Dojo Name</form:label>
						<form:input class="form-control" type="text" path="dojoName" />
						<form:errors path="dojoName" />
					</div>
					<button class="mt-2 btn btn-primary" type="submit">Submit</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>