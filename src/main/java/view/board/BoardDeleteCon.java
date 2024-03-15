package view.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;


@WebServlet("/BoardDeleteCon")
public class BoardDeleteCon extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		request.setCharacterEncoding("utf-8");
		
		BoardDAO bdao = new BoardDAO();
		//파라미터 받기
		int num = Integer.parseInt(request.getParameter("num")); 
				
		//메서드
		bdao.deleteBoard(num);
		
		//GetBoardList 서블릿으로 보내기 
		response.sendRedirect("BoardListCon");
	}
	

}
