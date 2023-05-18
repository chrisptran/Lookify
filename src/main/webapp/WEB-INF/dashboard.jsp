<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Dashboard</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="row">
	<div><a href="/songs/new">Add Song</a></div>
	<div>
		<form action="/dashboard" method="post">
			<input id="artist" name="artist" placeholder="Search" />
			<input type="submit" value="Search" />
		</form>
	</div>
</div>
<table class="table table-striped">
	<thead>
	<tr>
		<th>Name</th>
		<th>Rating</th>
		<th>Action</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="song" items="${songs}">
			<tr>
				<td><a href="/songs/${song.id}"><c:out value="${song.title}"></c:out></a></td>
				<td><c:out value="${song.rating}"></c:out></td>
				<td><a href="/songs/delete/${song.id}"><c:out value="delete"></c:out></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>