package org.scoula.boardservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/scope")
public class ScopeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //request 스코프
        request.setAttribute("request", "request 스코프에 저장한 데이터");

        //session 스코프
        HttpSession session = request.getSession();
        session.setAttribute("session", "session 스코프에 저장한 데이터");

        //application 스코프
        ServletContext context = getServletContext();
        context.setAttribute("application","application 스코프에 저장한 데이터");

        //scope.jsp 파일로 이동
        request.getRequestDispatcher("scope.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}