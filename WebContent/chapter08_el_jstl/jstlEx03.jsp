<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문</title>
</head>
<body>

	<%-- 

		1) forEach문1 
	
			[형식]
	
			<c:forEach var="임시변수명" begin="시작" end="끝"  step="증감식"></c:forEach>
		
			- java의 for문 기능을 한다.
			- var속성에 임시변수명을 작성하고 begin , end속성으로 반복 횟수를 지정한다.
			  (옵션)step을 통해서 증감식을 지정할 수 있다.
		
	  
	  
		2) forEach문2
			
			[형식]
			
			<c:forEach var="임시변수명" items=${배열이름}">	</c:forEach>
			
			- 자바의 forEach문 기능을 한다.
			- items 속성에 배열 및 어레이리스트등 반복가능한 객체를 지정한다.
			
	 --%>
	 
	<h3>1) forEach문</h3>
	<c:forEach var="i" begin="1" end="10">
		${i}
	</c:forEach>
	
	<hr>
	<c:forEach var="i" begin="1" end="10" step="${i = i + 2}">
		${i}
	</c:forEach>
	<hr>

	<c:forEach var="data" items="${datas }">
		${data }
	</c:forEach>
	<hr>
	<table border="1">
		<tr>
			<td>상품코드</td>
			<td>상품명</td>
			<td>부서코드</td>
			<td>무서명</td>
			<td>관리자명</td>
		</tr>
		<c:forEach var="product" items="${productList }">
			<tr>
				<td>${product.pdCd }</td>
				<td>${product.pdNm }</td>
				<td>${product.deptCd }</td>
				<td>${product.deptNm }</td>
				<td>${product.mgrNm }</td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>