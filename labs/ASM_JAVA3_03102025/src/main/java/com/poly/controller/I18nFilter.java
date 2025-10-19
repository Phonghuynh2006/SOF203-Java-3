package com.poly.controller;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@WebFilter("/*")
public class I18nFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();

        String lang = req.getParameter("lang");

        if (lang != null) {
            session.setAttribute("lang", lang);
        } else if (session.getAttribute("lang") == null) {
            session.setAttribute("lang", "vi"); // mặc định Tiếng Việt
        }

        chain.doFilter(request, response);
    }
}
