<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:forEach var="dto" items="${list }" varStatus="st">
	<c:if test="${st.first }">
		<h2>리뷰 읽기 : ${dto.idx }</h2>
		<div><h4>${dto.title } | ${dto.wdate }</h4></div>
		<div>
			<pre>${dto.content }</pre>
		</div>
	</c:if>
	<a href="${cpath }/upload/${dto.fileName}" target="_blank">
		<img src="${cpath }/upload/${dto.fileName}" width="200px">
	</a>
</c:forEach>


</body>
</html>