<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="/style.css" rel="stylesheet">
</head>
<body>
<h2>Welcome to Big B's Pizza</h2>




<h3>Specialty Pizza's</h3>
		<ul>
		<c:forEach var="pizza" items="${pizzalist}">
		<c:url value="/specialtypizza" var="sp"><c:param name="pname" value="${pizza.name}"/>
		<c:param name="pprice" value="${pizza.price}"/></c:url>
		<p><a href="/<c:out value="${sp}"/>">${pizza.name}</a></p>
		</c:forEach>
		</ul>
		
<h3>Custom Pizza</h3>

<a href="custompizzabuilder">Build your Own</a>


<h3>Leave a Review</h3>
<a href="reviews"> Click here to leave a review</a>

</body>
</html>