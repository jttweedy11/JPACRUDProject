<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create County</title>
</head>
<body>

	<h3>Create a Film:</h3>
	<h6>Please enter the appropriate information below to create a new
		film.</h6>
	<form action="createCounty.do" method="POST">
		County Name: <input type="text" name="countyName" /><br> Does: <input
			type="text" name="doe" /><br> Doe Fawn: <input type="text"
			name="doeFawn" /><br> Antlered Bucks: <input type="text"
			name="antleredBuck" /><br> Button Bucks: <input type="text"
			name="buttonBuck" /><br> Shed Bucks: <input type="text"
			name="shedBuck" /><br> Total Deer: <input type="text"
			name="totalDeer" /><br> <input type="submit"
			value="Create County" />
	</form>

	<a href="home.do">Return Home</a>

</body>
</html>