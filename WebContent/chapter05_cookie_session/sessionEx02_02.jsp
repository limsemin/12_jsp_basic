<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session사용 예시</title>
</head>
<body>
	
	<h2>로그인 폼 처리 페이지</h2>
	<% 
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		
		
		session.setAttribute("id", id);			// 왼쪽이 key가 되고 오른쪽이 map이 된다.
		session.setAttribute("passwd",passwd);	// session에 사용자 정보를 저장한다.
		
		
		%>

	
  <h2>정보입력 폼</h2>
  <form method="post" action="sessionEx01_02.jsp">
      아이디: <input type="text" name="id" maxlength="50"><br>
      패스워드: <input type="password" name="passwd" maxlength="16"><br>
      <input type="submit" value="정보입력">
  </form>
  

</body>
</html>