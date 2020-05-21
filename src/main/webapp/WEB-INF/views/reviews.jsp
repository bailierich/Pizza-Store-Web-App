<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet">
</head>
<body>
<h1>Leave A Review</h1>
	<form action="/reviews/submit">
		<div>
			<label>First Name</label><input type="text" name="fname" />
		</div>
		<div>
			<label>Comment</label> <textarea name="comment" rows="5" cols="5"></textarea>
		</div>
		<div>
			<p>
				<label>Rating</label> (Best) <input type="radio" name="rating"
					value="5" required> 5 <input type="radio" name="rating" value="4">
				4 <input type="radio" name="rating" value="3"> 3 <input
					type="radio" name="rating" value="2"> 2 <input type="radio"
					name="rating" value="1"> 1 (Worst)
			</p>
		</div>
	<button>Submit</button>

	</form>

<a href="/">Nevermind</a>

</body>
</html>