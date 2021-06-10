<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h2>리뷰 작성</h2>

<form method="POST" enctype="multipart/form-data">
	<fieldset>
		<div><input type="text" name="title" placeholder="제목을 입력하세요" required autofocus></div>
		<div><textarea name="content"></textarea></div>
		<div><input type="file" name="files" accept="image/*"  multiple></div>
	</fieldset>
	<br>
	<div><input type="submit" value="작성"></div>
</form>

</body>
</html>