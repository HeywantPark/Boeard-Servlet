package org.scoula.boardservlet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(urlPatterns = "/*")
public class CounterFilter implements Filter {
    private static int counter = 0;

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {

        req.setAttribute("counter", ++counter);
        System.out.println("Filter 가 작동한 횟수는 : " + counter);
        chain.doFilter(req, res);

    }
}
