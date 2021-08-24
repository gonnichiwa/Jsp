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

@WebServlet("/partUploadPro2")
@MultipartConfig(
        fileSizeThreshold = 0,
        location = "C:/jsp2.3/upload"
)
public class PartUploadPro2Servlet extends HttpServlet {

    public PartUploadPro2Servlet(){
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String writer = request.getParameter("writer");
        String uploadFileNameList = "";
        for(Part part: request.getParts()) {
            if(!part.getName().equals("writer")){
                String contentDisposition = part.getHeader("content-disposition");
                String uploadFileName = getUploadFileName(contentDisposition);
                part.write(uploadFileName);
                uploadFileNameList += " " + uploadFileName;
            }
        }
        out.println("작성자 " + writer + " 님이" + uploadFileNameList + " 파일을 업로드 했습니다.");

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
