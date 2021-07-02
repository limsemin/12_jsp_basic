package _09_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join") // 접근경로 : IP주소:포트번호/프로젝트이름/해당 url
public class Join extends HttpServlet {
	
	// Servlet 생성시 기본값으로 생성 , 크게 의미는 없음
	private static final long serialVersionUID = 1L;
     
	// get형식으로 url 요청이 들어왔을때 실행될 메서드 > reqPro메서드로 포워딩
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	// post 형식으로 요청이 들어왔을때 실행될 메서드 > reqPro메서드로 포워딩
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	// get , post형식으로 요청되어도 아래의 메서드가 실행된다.
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// view 페이지 이동 방식
		RequestDispatcher dis = request.getRequestDispatcher("chapter09_servlet/01_join.jsp"); // WebContent 아래의 경로 부터 기입한다.
		dis.forward(request, response);
		
	}
	
}




