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


@WebServlet("/BoardUpdateCon")
public class BoardUpdateCon extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		request.setCharacterEncoding("utf-8");
		
		int num =Integer.parseInt(request.getParameter("num"));
		BoardDAO bdao = new BoardDAO();
		// 하나 가져오기 
		BoardVO bean=bdao.getOneBoard(num);
		

		request.setAttribute("bean", bean); 
		//포워딩
		RequestDispatcher dis = request.getRequestDispatcher("./publish.jsp");
		dis.forward(request, response);

	}
	

}
