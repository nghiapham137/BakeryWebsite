package ControllerManagement;

import ModelManagement.ServiceManagement.UserServiceImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "userControllerServlet", urlPatterns = {"/userController"})
public class UserControllerServlet extends HttpServlet {

    private UserServiceImplement userServiceImplement = new UserServiceImplement();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "login":
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                boolean isLogged = userServiceImplement.login(username, password);
                if (isLogged) {
                    try {
                        response.sendRedirect("../ViewManagementPage/Administrator.jsp");
                    } catch (Exception exception) {
                        System.out.println(exception);
                    }
                } else {
                    response.sendRedirect("../ViewManagementPage/Login.jsp");
                }
                break;
            default:
                response.sendRedirect("../ViewManagementPage/Login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        action = action == null ? "" : action;
        switch (action) {
            case "login":
                response.sendRedirect("/ViewManagementPage/Login.jsp");
                break;
            default:
                response.sendRedirect("/ViewManagementPage/Login.jsp");
                break;
        }
    }
}
