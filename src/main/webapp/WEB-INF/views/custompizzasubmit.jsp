<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank You</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet">
</head>
<body>
<h3>Size: ${pizzaSize}</h3>
<h3>Toppings: ${tCount}</h3>
<h3>Gluten-Free Crust: ${gluten}</h3>
<h3>Specialty Instuctions: <c:out value="${specInstructions}"/></h3>
<h3>Price: <fmt:formatNumber value="${price}" type="currency"></fmt:formatNumber></h3>
<c:if test = "${price > 15.0}" >
<p> Because your pizza is at least $15 you get FREE DELIVERY!!!</p>
</c:if>

<a href="/">Back To Homepage</a>
</body>
</html>