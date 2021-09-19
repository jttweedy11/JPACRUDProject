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
	<h2>The following County was deleted</h2>

	<table>
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
			<tr>
				<td>${county.id }</td>
				<td>${county.countyName }</td>
				<td>${county.doe }</td>
				<td>${county.doeFawn }</td>
				<td>${county.antleredBuck }</td>
				<td>${county.buttonBuck }</td>
				<td>${county.shedBuck }</td>
				<td>${county.totalDeer }</td>
			</tr>
		</tbody>
	</table><br>
	<a href="home.do">Return Home</a>
</body>
</html>