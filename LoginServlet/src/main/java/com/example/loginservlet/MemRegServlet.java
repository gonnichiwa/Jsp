package com.example.loginservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/memReg")
public class MemRegServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* 1. client의 요청을 받아 오는 부분 */
        String name = request.getParameter("name");
        String addr = request.getParameter("addr");
        String tel = request.getParameter("tel");
        String hobby = request.getParameter("hobby");

        /* 2. 어떤 방식으로 응답 해 줄 것인가? */
        response.setContentType("text/html; charset=UTF-8");

        /* 3. 응답할 내용 데이터를 어떻게 보여줄 것인가? */
        PrintWriter out = response.getWriter();
        out.println("이름 = " + name + "<br/>");
        out.println("주소 = " + addr + "<br/>");
        out.println("전번 = " + tel + "<br/>");
        out.println("취미 = " + hobby + "<br/>");

    }
}
