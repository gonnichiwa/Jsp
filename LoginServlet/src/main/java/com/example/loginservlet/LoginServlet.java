package com.example.loginservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    public LoginServlet(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // http://localhost:8080/LoginServlet_war_exploded/login?id=hhhh&passwd=ffffff -- 웹브라우저(client)에서 요청 (GET방식, HTTPMETHOD)
        /* 1. client의 요청을 받아 오는 부분 */
        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        // 연습 : 이름(name), 나이(age) 추가해서 뜰 수 있도록 해보세요.
        String name = request.getParameter("name");
        String age = request.getParameter("age");

        /* 2. 어떤 방식으로 응답 해 줄 것인가? */
        response.setContentType("text/html;charset=UTF-8");

        /* 3. 응답할 내용 데이터를 어떻게 보여줄 것인가? */
        PrintWriter out = response.getWriter();
        out.println("아이디 = " + id + "<br/>");
        out.println("비번 = " + passwd + "<br/>");
        out.println("이름 = " + name + "<br/>");
        out.println("나이 = " + age + "<br/>");
    }
}
