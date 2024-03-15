package view.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;



@WebServlet("/BoardInfoCon")
public class BoardInfoCon extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String numParameter = request.getParameter("num");
		if(numParameter != null && !numParameter.isEmpty()) {
			int num =Integer.parseInt(request.getParameter("num"));
			System.out.println("num : " + num);
			BoardDAO bdao = new BoardDAO();
			// 하나 가져오기 
			BoardVO beanPrev=bdao.getPrevBoard(num);
			
			BoardVO beanNow=bdao.getOneBoard(num);
			
			
			BoardVO beanNext=bdao.getNextBoard(num);
			request.setAttribute("beanPrev", beanPrev); 
			request.setAttribute("beanNow", beanNow); 
			request.setAttribute("beanNext", beanNext); 
			//포워딩
			RequestDispatcher dis = request.getRequestDispatcher("./noticenewsread.jsp");
			dis.forward(request, response);
		} else {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('마지막 게시물입니다.');"); 
			out.print("history.go(-1);");
			out.print("</script>");
		}
		
		
	}


}
