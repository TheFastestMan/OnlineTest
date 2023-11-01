package ru.rail.onlinetest.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ru.rail.onlinetest.dto.UserDto;
import ru.rail.onlinetest.util.JspHelper;


import java.io.IOException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDto user = (UserDto) req.getSession().getAttribute("user");

        if (user == null) {
            req.setAttribute("error", "Please login to view user details.");
            req.getRequestDispatcher(JspHelper.getJspFormat("errorPage")).forward(req, resp);
            return;
        }

        req.setAttribute("user", user);
        req.getRequestDispatcher(JspHelper.getJspFormat("user")).forward(req, resp);
    }
}
