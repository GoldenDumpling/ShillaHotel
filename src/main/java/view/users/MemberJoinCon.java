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
import biz.users.UserVO;


@WebServlet("/MemberJoinCon")
public class MemberJoinCon extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글처리
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=utf-8");
				
				String email = request.getParameter("email1")+ "@" +request.getParameter("email2");
				String password = request.getParameter("password");
				String password1 = request.getParameter("password1");
				String name = request.getParameter("name");
				String gender = request.getParameter("gender");
				String birth = request.getParameter("birth1") +"-"+ request.getParameter("birth2") +"-"+ request.getParameter("birth3");
				String tel = request.getParameter("tel1") +"-"+ request.getParameter("tel2") +"-"+ request.getParameter("tel3");
				String agree1 = request.getParameter("agree1");
				String agree2 = request.getParameter("agree2");
				
				String isDuplicatedStr = request.getParameter("isDuplicated");
				int isDuplicated = 0; // 기본값 설정

				try {
				    isDuplicated = Integer.parseInt(isDuplicatedStr);
				} catch (NumberFormatException e) {
		    	 	//중복체크를 안한 경우
			        //메세지 맵핑
			        String message = "4";
			        request.setAttribute("message", message);
			        System.out.println("message : "+message);
					//포워딩
					RequestDispatcher dis = request.getRequestDispatcher("./join.jsp");
					dis.forward(request, response);
					return;
				}
						
				UserDAO udao = new UserDAO();
				UserVO bean = new UserVO();

				
			    if(email == null || password == null || name == null || gender == null ||
			    birth == null || tel == null || agree1 == null || agree2 == null) {
			    	// 필수 입력을 안한 경우
			        //메세지 맵핑
			        String message = "3";
			        request.setAttribute("message", message);
			        System.out.println("message : "+message);
					//포워딩
					RequestDispatcher dis = request.getRequestDispatcher("./join.jsp");
					dis.forward(request, response);
			     } else if(!password.equals(password1)) {
			    	// 비밀번호 확인이 틀린경우
			        //메세지 맵핑
			        String message = "5";
			        request.setAttribute("message", message);
			        System.out.println("message : "+message);
					//포워딩
					RequestDispatcher dis = request.getRequestDispatcher("./join.jsp");
					dis.forward(request, response);
			     } else {
					 bean.setEmail(email);
		 			 bean.setPassword(password);
		 			 bean.setName(name);
		 			 bean.setGender(gender);
			 		 bean.setBirth(birth);
					 bean.setTel(tel);
			    	 udao.userInsert(bean);
			    	 //로그인 페이지로
			    	 response.sendRedirect("login.jsp?message=success");
			     }
			    
			    

			

				

				
				
					
				 
				
				
			
	}

}
