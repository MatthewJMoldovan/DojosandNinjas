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
<title>Dojo and Ninjas</title>
</head>
<body>
	<div class="w-75 p-4 mx-auto">
		<div class="shadow mb-4 rounded border p-4 text-start">
			<form:form action="/process/createNinja" method="POST"
				modelAttribute="newNinja">
				<div class="formGroup">
					<div>
						<form:select path="dojo" class="form-select">
						<c:forEach var="eachDojo" items="${dojoList }">
							<form:option value="${eachDojo.id }">${eachDojo.dojoName }</form:option>
						</c:forEach>
						</form:select>	
					</div>
					<div>
						<form:label path="firstName"> First Name</form:label>
						<form:input class="form-control" type="text" path="firstName" />
						<form:errors path="firstName" />
					</div>
					<div>
						<form:label path="lastName"> Last Name</form:label>
						<form:input class="form-control" type="text" path="lastName" />
						<form:errors path="lastName" />
					</div>
					<div>
						<form:label path="age"> Age</form:label>
						<form:input class="form-control" type="text" path="age" />
						<form:errors path="age" />
					</div>
					<button class="mt-2 btn btn-primary" type="submit">Submit</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>