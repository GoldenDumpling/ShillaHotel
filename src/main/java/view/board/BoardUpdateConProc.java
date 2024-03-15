package view.board;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import biz.board.BoardDAO;
import biz.board.BoardVO;


@WebServlet("/BoardUpdateConProc")
public class BoardUpdateConProc extends HttpServlet {

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
	    
	    // Cor.jar 기본 폴더 설정
	    String realFolder = "";
	    String saveFolder = "upload";
	    ServletContext context = getServletContext();
	    realFolder = context.getRealPath(saveFolder);

	    // 한글설정, 저장 파일 사이즈 설정
	    String encType = "utf-8";
	    int maxSize = 1024*1024*20; // 20MB 설정
	    
	    // MultipartRequest 생성
	    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType);
	    
	    String fileName = multi.getFilesystemName("filedata");
	    System.out.println("파일이름 : " + fileName);
	    System.out.println("realFolder : " + realFolder);
	    // 파일 경로 초기화
	    String file_path = null; 
	    // 파일이 첨부되었을 때
	    if (fileName != null) { 
	        File uploadedFile = multi.getFile("filedata");
	        
	        // 상대 웹 경로 계산
	        String uploadedFilePath = uploadedFile.getAbsolutePath();
	        String webAppPath = context.getRealPath("/");
	        file_path = uploadedFilePath.substring(webAppPath.length()).replace(File.separatorChar, '/');
	        
	        System.out.println("상대 웹 경로: " + file_path);
	    } 
	    
	    // 기타 폼 데이터 처리
	    int num = Integer.parseInt(multi.getParameter("num"));
	    String subject = multi.getParameter("subject");
	    String content = multi.getParameter("content");
	    String category = multi.getParameter("category");
	    
	    // 데이터베이스 처리 객체 생성
	    BoardDAO bdao = new BoardDAO();
	    
	    // 수정하기 메서드 호출
	    bdao.UpdateBoard(num, subject, content, category, file_path);
	    
	    // 목록 페이지로 리다이렉트
	    response.sendRedirect("BoardListCon");
	}


	

}
