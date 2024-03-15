package view.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;



@WebServlet("/BoardListCon")
public class BoardListCon extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// #1. 페이징 처리 = 
		// 화면에 보여질 게시글의 갯수를 지정
		int pageSize = 10;
		// 현재 보여지고 있는 페이지의 넘버값을 읽어들임
		String pageNum = request.getParameter("pageNum");
		//현재 처리 페이지 어노테이션
		String currentPageName = "BoardListCon";
		// null 처리 = 처음 로딩시 값이 없으므로
		if(pageNum==null) {
			pageNum = "1";
		}
		// 전체 게시글의 갯수 = 이전, 이후 버튼이 필요할지 안 할지에 사용
		int count = 0;
		// JSP 페이지 내에서 보여질 페이징 숫자값을 저장하는 변수
		int number = 0;
		// 현재 보여지고 있는 페이지 문자 -> 숫자형 캐스팅
		int currentPage = Integer.parseInt(pageNum);
		
		// #2. 전체 게시글 갯수 가져오는 메서드
		BoardDAO bdao = new BoardDAO();
		count = bdao.getAllCount(); // 메서드 결과값 지정
		
		// #3. 전체 페이지 시작번호 설정
		System.out.println("현재페이지 : "+ currentPage);
		System.out.println("페이지크기 : "+ pageSize);
		// 시작
		int startRow = (currentPage - 1) * pageSize + 1 ;
		// 시작
		int endRow = currentPage  * pageSize ;
		
		// #4. 최신글 10개 기준으로 게시글 가져오기 메서드
		ArrayList<BoardVO> v = bdao.getAllBoard(startRow, endRow);
		
		// 페이징 숫자 = 화면에 보일 페이징 숫자
		number = count - (currentPage - 1) * pageSize;
		
		// 바인딩
		request.setAttribute("v", v); // 최신글 10개
		request.setAttribute("number", number); // 페이징 수
		request.setAttribute("pageSize", pageSize); // 화면에 보여질 게시글 수
		request.setAttribute("count", count); // 전체 게시글 갯수 = 이걸 알아야 페이징 계산이 가능
		request.setAttribute("currentPage", currentPage); // 현재 페이지
		request.setAttribute("currentPageName", currentPageName); //현재 페이지 이름
		// 포워딩
		RequestDispatcher dis = request.getRequestDispatcher("./board.jsp");
		dis.forward(request, response);
	}

}
