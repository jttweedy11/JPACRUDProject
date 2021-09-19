<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>County Harvest Site</title>
</head>
<body>

	<h1>Iowa County Harvest App</h1>


	<h3>DEBUG:</h3>

	<table class="table thead-dark table-striped table-hover">
		<thead>
			<tr>
				<th>Id</th>
				<th>County Name</th>
				<th>Does</th>
				<th>Doe Fawn</th>
				<th>Antlered Bucks</th>
				<th>Button Bucks</th>
				<th>Shed Bucks</th>
				<th>Total Deer</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="c" items="${county}">
				<tr>
				<td>${c.id }</td>
				<td>${c.countyName }</td>
				<td>${c.doe }</td>
				<td>${c.doeFawn }</td>
				<td>${c.antleredBuck }</td>
				<td>${c.buttonBuck }</td>
				<td>${c.shedBuck }</td>
				<td>${c.totalDeer }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>