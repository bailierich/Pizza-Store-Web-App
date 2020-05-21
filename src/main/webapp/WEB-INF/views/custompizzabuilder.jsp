<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pizza Builder</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet">
</head>
<body>


	<form action="/custompizzabuilder/submit">
	<div>
		<label>Pizza Size</label>
		<select name="pizzaSize">
			<option value="small">Small</option>
			<option value="medium">Medium</option>
			<option value="large">Large</option>
		</select>
		</div>
		<div>
		<label>Topping Count</label>
				<input type="text" name="tCount" pattern="^(?:[1-9]|0[1-9]|10)$" placeholder="1 - 10" required />

			<c:forEach var="topping" items="${pizzaToppings}" >
			<ul><li><c:out value="${topping}"></c:out></li></ul>
			</c:forEach>
			
</div>
<div>
<label>Gluten-free Crust?</label> 
				<input type="checkbox" name="gluten" />
</div>
<label>Special Instructions (Optional)</label>
<div>
<textarea name="specialInstuctions" rows="10" cols="40"></textarea>
</div>

<button>Calculate Price</button>

	</form>
	
	<a href="/">Nevermind</a>
</body>
</html>