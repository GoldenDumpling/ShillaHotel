package view.users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutCtrl")
public class LogoutCtrl extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션을 가져와서 무효화
		HttpSession session = request.getSession(false); // false: 존재하지 않으면 null 반환
		if (session != null) {
		    session.invalidate(); // 세션 무효화
		}
		
		// 로그아웃 후 로그인 페이지로 리다이렉트
		response.sendRedirect("index.jsp"); 
	}

}
