package ru.rail.onlinetest.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import ru.rail.onlinetest.dto.UserDto;
import ru.rail.onlinetest.service.UserService;
import ru.rail.onlinetest.util.JspHelper;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    private final UserService userService = UserService.getInstance();

    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        List<UserDto> allUsers = userService.findAllUser();
        req.setAttribute("users", allUsers);
        req.getRequestDispatcher(JspHelper.getJspFormat("adminPanel")).forward(req, resp);
    }
}
