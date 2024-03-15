package view.board;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import biz.board.BoardDAO;
import biz.board.BoardVO;

@WebServlet("/BoardWriteCon")
public class BoardWriteCon extends HttpServlet {
    // doGet()
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGetPost(request, response);
    }
    // doPost()
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGetPost(request, response);
    }
    // doGetPost()
    protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 한글처리
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        // 파일 저장 경로 설정
        String realFolder = "";
        String saveFolder = "upload";
        ServletContext context = getServletContext();
        realFolder = context.getRealPath(saveFolder);
        int maxSize = 1024 * 1024 * 20; // 20MB
        String encType = "utf-8"; // 인코딩 타입

        // MultipartRequest 생성
        MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

        // 파라미터값 (MultipartRequest 객체를 통해)
        String subject = multi.getParameter("subject");
        String content = multi.getParameter("content");
        String category = multi.getParameter("category");
        String fileName = multi.getFilesystemName("filedata");
        // 파일 경로 초기화
        String file_path = null; 
        // 파일이 첨부되었다면
        if (fileName != null) { 
            File uploadedFile = multi.getFile("filedata");
            String uploadedFilePath = uploadedFile.getAbsolutePath();
            String webAppPath = context.getRealPath("/");
            file_path = uploadedFilePath.substring(webAppPath.length()).replace(File.separatorChar, '/');
            System.out.println("상대 웹 경로: " + file_path);
        } 

        // 자바빈 사용
        BoardVO vo = new BoardVO();
        vo.setSubject(subject);
        vo.setContent(content);
        vo.setCategory(category);
        vo.setFile_path(file_path); // 파일이 없으면 null로 설정됨
        
        BoardDAO bdao = new BoardDAO();
        bdao.addBoard(vo);
        response.sendRedirect("BoardListCon");
    }

}
