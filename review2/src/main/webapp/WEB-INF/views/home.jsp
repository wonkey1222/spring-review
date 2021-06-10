<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h2>간단 리뷰를 작성할 수 있는 프로그램을 만듭니다</h2>

<ul>
	<li>게시판 형식으로 작성하며, 페이징은 포함하지 않습니다</li>
	<li>리뷰글에는 이미지를 첨부할 수 있으며, 개수에는 제한이 없습니다</li>
	<li>첨부파일의 이름은 [연월일시분-원본파일이름] 의 형식으로 구성합니다</li>
	<li>파일 업로드 경로는 D:/upload/ 입니다</li>
	<li>첨부된 이미지는 가로 200px로 고정되어 출력됩니다</li>
	<li>첨부된 이미지를 클릭하면 새 탭에서 이미지를 열어서 보여줍니다</li>
</ul>
<img src="${cpath }/resources/table-model.jpg" width="400px">
</body>
</html>