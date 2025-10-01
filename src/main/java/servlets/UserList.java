package servlets;

import dao.UserDao;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/list")
public class UserList extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("=== USERLIST SERVLET DZIAŁA ===");

        UserDao userDao = new UserDao();
        User[] users = userDao.findAll();
        request.setAttribute("users", users);

        getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);
    }
}