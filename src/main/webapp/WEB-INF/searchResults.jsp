<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/style.css">
<title>Search Results</title>
</head>
<body>
<h1>Songs by: <c:out value="${searchTerm}"></c:out></h1>
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

<p><a href="/dashboard">Dashboard</a></p>
</body>
</html>