<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
</head>
<style>
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	.fs, .fe, .sb, .ce {
		display: flex;
	}
	.fs {	justify-content: flex-start; 	}
	.fe { 	justify-content: flex-end;		}
	.sb {  	justify-content: space-between; }
	.ce {   justify-content: center;		}	
	nav > ul {
		list-style: none;
		width: 50%;
		margin: 20px auto;
	}
	nav > ul > li > a {
		font-weight: bold;
		font-size: 20px;
	}
	input[name="title"] {
		width: 300px;
		padding: 10px;
	}
	fieldset {
		width: 400px;
	}
	textarea {
		width: 300px;
		height: 100px;
		padding: 10px;
		margin: 10px;
		margin-left: 0;
		resize: none;
	}
	
</style>
<body>

<header>
	<h1><a href="${cpath }">Review</a></h1>
	<div class="fe">응시자 : ㅇㅇㅇ</div>
	<nav>
		<ul class="sb">
			<li><a href="${cpath }/list">리뷰목록</a></li>
			<li><a href="${cpath }/write">리뷰작성</a></li>
		</ul>
	</nav>
</header>
<hr>

