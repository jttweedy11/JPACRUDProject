<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/main.css">
<title>County Harvest Site</title>
</head>
<body>

	<h1>Iowa County Harvest App</h1>

	<a href="createCounty.jsp">Create New County</a>
	<br />

	<form class="form" action="getAllCounty.do" method="GET">
		<input class="btn btn-primary" type="submit" value="Show All Counties" />
	</form>

	<form class="form" action="getCounty.do" method="GET">
		County ID: <input type="text" name="countyId" /> <input
			class="btn btn-primary" type="submit" value="Show County" />
	</form>

</body>
</html>