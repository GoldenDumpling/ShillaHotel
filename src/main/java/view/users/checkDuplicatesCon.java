package view.users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.users.UserDAO;


@WebServlet("/checkDuplicatesCon")
public class checkDuplicatesCon extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 요청 파라미터로부터 이메일을 받아옵니다.
	    String email1 = request.getParameter("email1");
	    String email2 = request.getParameter("email2");
	    String email = email1 +"@"+ email2;
	    
	    // UserDAO 객체를 생성하여 이메일 중복 검사를 수행합니다.
	    UserDAO udao = new UserDAO();
	    System.out.println(email);
	    int isDuplicated = udao.checkEmailDuplicate(email);
	    
	    // 응답의 컨텐트 타입을 설정합니다.
	    response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    request.setAttribute("email1", email1);
	    request.setAttribute("email2", email2);
	    request.setAttribute("email2", email2);
	    request.setAttribute("isDuplicated", isDuplicated);
        String message = "0";
        
	    // 이메일이 중복된 경우 경고창을 띄우고 이전 페이지로 돌아갑니다.
	    if(isDuplicated == 1) {
	        // 중복된 이메일인 경우
	        //메세지 맵핑
	    	message = "1";
	    	request.setAttribute("message", message);
			//포워딩
			RequestDispatcher dis = request.getRequestDispatcher("./join.jsp");
			dis.forward(request, response);
	    } else {
	    	// 사용 가능한 이메일인 경우
	        //메세지 맵핑
	        message = "2";
	        request.setAttribute("message", message);
	        System.out.println("message : "+message);
			//포워딩
			RequestDispatcher dis = request.getRequestDispatcher("./join.jsp");
			dis.forward(request, response);
	        
	    }

	}

}
