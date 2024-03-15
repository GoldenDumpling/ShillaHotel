package view.board;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardFileDownload")
public class BoardFileDownload extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGetPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGetPost(request, response);
    }

    protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 한글처리
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // 값 받기
        String filePath = request.getParameter("file_path");

        // 실제 서버 내 파일 저장 위치
        String realPath = getServletContext().getRealPath("/");
        File file = new File(realPath + filePath);

        // 파일이 실제로 존재하는지 확인
        if (!file.exists()) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        // MIME 타입 설정
        String mimeType = getServletContext().getMimeType(file.getAbsolutePath());
        if (mimeType == null) {
            mimeType = "application/octet-stream";
        }
        response.setContentType(mimeType);

        // 파일 크기 설정
        response.setContentLengthLong(file.length());

        // 한글 파일 이름 처리
        String downloadName = file.getName();
        String headerValue;
        if (request.getHeader("User-Agent").contains("MSIE") || request.getHeader("User-Agent").contains("Trident") || request.getHeader("User-Agent").contains("Edge")) {
            downloadName = URLEncoder.encode(downloadName, "UTF-8").replaceAll("\\+", "%20");
            headerValue = "attachment; filename=" + downloadName;
        } else {
            downloadName = new String(downloadName.getBytes("UTF-8"), "ISO-8859-1");
            headerValue = "attachment; filename=\"" + downloadName + "\"";
        }

        // 파일 다운로드를 위한 응답 헤더 설정
        response.setHeader("Content-Disposition", headerValue);

        // 파일 전송
        try (FileInputStream in = new FileInputStream(file); OutputStream out = response.getOutputStream()) {
            byte[] buffer = new byte[4096];
            int bytesRead = -1;

            while ((bytesRead = in.read(buffer)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
        }
    }
}
