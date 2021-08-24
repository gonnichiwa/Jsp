package com.example.loginservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/partUploadPro1.bbs")
@MultipartConfig(
        fileSizeThreshold = 0,
        location = "C:/jsp2.3/upload"
)
public class partUploadPro1Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String writer = request.getParameter("writer");
        Part part = request.getPart("partFile1");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        String contentDisposition = part.getHeader("content-disposition");
        System.out.println("contentDisposition="+contentDisposition);
        String uploadFileName = getUploadFileName(contentDisposition);
        part.write(uploadFileName);
        out.println("작성자 " + writer + "님이 " + uploadFileName + " 파일을 업로드 하였습니다");
    }

    // chrome 브라우저
    private String getUploadFileName(String contentDisposition) {
        String uploadFileName = null;
        String[] contentSplitStr = contentDisposition.split(";");
        for(String s : contentSplitStr){
            System.out.println(s);
        }
        int lastPathSeparatorIndex = contentSplitStr[2].indexOf("\"");
        int lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
        uploadFileName = contentSplitStr[2].substring(lastPathSeparatorIndex + 1, lastQutosIndex);
        System.out.println("uploadFileName=" + uploadFileName);
        return uploadFileName;
    }
}
