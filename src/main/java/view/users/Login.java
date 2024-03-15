package view.users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.users.UserDAO;
import biz.users.UserVO;


@WebServlet("/Login")
public class Login extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGetPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGetPost(request, response);
    }
    protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 요청 파라미터로부터 이메일과 비밀번호를 받아옵니다.
    	
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // 사용자 인증을 위한 DAO 호출
        UserDAO udao = new UserDAO();
        UserVO user = udao.getUser(email, password); // 이 메소드는 데이터베이스에서 해당 이메일과 비밀번호를 가진 사용자를 조회합니다.
        
        if(user.getEmail() != null) {
            // 로그인 성공
            HttpSession session = request.getSession();
            session.setAttribute("user", user); // 사용자 정보를 세션에 저장
            session.setMaxInactiveInterval(3600);
            response.sendRedirect("index.jsp"); // 로그인 성공 시 리다이렉트할 페이지
        } else if(user.getEmail()==null){
        	// 로그인 실패
        	response.sendRedirect("login.jsp?message=loginFail");

        }
    }
}
