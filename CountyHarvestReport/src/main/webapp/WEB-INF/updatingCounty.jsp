<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update County</title>
</head>
<body>
	<h3>Updating County Data</h3>
	<form action="updatingCounty.do?countyId=${county.id }" method="POST">
		County ID: <input disabled = "disabled" type="number" value="${county.id }" name="countyId" /> <br>
		County Name: <input type="text" value="${county.countyName }" name="countyName" /> <br>
		Does: <input type="number" value="${county.doe }" name="doe" /> <br> 
		Doe Fawn: <input type="number"value="${county.doeFawn }" name="doeFawn" /> <br>
		Antlered Buck: <input type="number" value="${county.antleredBuck }" name="antleredBuck" /> <br> 
		Button Buck: <input type="number" value="${county.buttonBuck }" name="buttonBuck" /> <br>
		Shed Buck: <input type="number" value="${county.shedBuck }" name="shedBuck" /> <br> 
		Total Deer: <input type="number" value="${county.totalDeer }" name="totalDeer" /> <br> 
		<input type="submit" value="Update County" /><br> <a
			href="home.do">Cancel</a>
	</form>
</body>
</html>