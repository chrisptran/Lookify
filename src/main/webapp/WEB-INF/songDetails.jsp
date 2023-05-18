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
<title>Song Details</title>
</head>
<body>
<h1>Song Details</h1>
<p>Title: <c:out value="${song.title}" /></p>
<p>Artist: <c:out value="${song.artist}" /></p>
<p>Rating: <c:out value="${song.rating}" /></p>
<p><a href="/dashboard">Dashboard</a></p>
</body>
</html>