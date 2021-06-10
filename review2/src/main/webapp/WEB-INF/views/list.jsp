<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h2>리뷰 목록</h2>

<c:forEach var="dto" items="${list }">
	<p>
		${dto.idx } | 
		<a href="${cpath }/read/${dto.idx}">${dto.title }</a> | 
		${dto.wdate }
	</p>
</c:forEach>

</body>
</html>