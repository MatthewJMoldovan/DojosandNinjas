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
<title>Dojos and Ninjas</title>
</head>
<body>
	<div class="w-75 p-4 mx-auto">
		<h1>All Ninjas</h1>
		<div class="shadow mb-4 rounded border p-4 text-start">
			<table class="table">
			<thead>
					<tr>
						<th class="text-center">Ninja</th>
						<th class="text-center">Dojo</th>
						<th class="text-center">Age</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="eachNinja" items="${ninjaList }">
						<tr>
							<td class="text-center align-middle"><a
								href="/ninjas/${eachNinja.id}"><c:out
										value="${eachNinja.firstName } ${eachNinja.lastName }"></c:out></a></td>
							<td class="text-center align-middle"><a href="/dojos/${eachNinja.dojo.id }"><c:out
									value="${eachNinja.dojo.dojoName }"></c:out></a></td>
							<td class="text-center align-middle"><c:out
									value="${eachNinja.age }"></c:out></td>
						</tr>
					</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>