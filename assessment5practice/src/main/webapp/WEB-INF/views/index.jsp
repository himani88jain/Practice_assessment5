<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample Landing Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>
    
	<div class="container">
	<form  action="/submit-details">
		<h2 class="display-4">Birth Year Selection Page</h2>
		<label>Name</label>
		<input type="text" name="name" autofocus/><br>
		<label>Year</label>
		<input type="number" name="year"/><br><br>
		<button type="submit">Submit</button>
		</form>
	</div>

</body>
</html>