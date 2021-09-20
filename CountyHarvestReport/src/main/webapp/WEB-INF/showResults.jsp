<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Search Results:</h2>

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
				<th>Delete</th>
				<th>Edit</th>
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
					<td><a href="deleteCounty.do?countyId=${c.id}">Delete County</a></td>
					<td><a href="countyToEdit.do?countyId=${c.id}">Edit County</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<a href="home.do">Return Home</a>

</body>
</html>