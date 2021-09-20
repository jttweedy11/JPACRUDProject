<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/main.css">
<title>Insert title here</title>
</head>
<body>
	<h2>The following County was deleted</h2>

	<table>
		<thead>
			<tr>
				<td>Id</td>
				<td>County Name</td>
				<td>Does</td>
				<td>Doe Fawn</td>
				<td>Antlered Bucks</td>
				<td>Button Bucks</td>
				<td>Shed Bucks</td>
				<td>Total Deer</td>
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