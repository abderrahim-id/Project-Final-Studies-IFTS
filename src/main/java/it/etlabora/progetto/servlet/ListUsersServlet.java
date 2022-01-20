package it.etlabora.progetto.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.etlabora.progetto.dto.UserDto;
import it.etlabora.progetto.service.UserService;
import it.etlabora.progetto.serviceImpl.UserServiceImpl;

public class ListUsersServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	UserService userService = new UserServiceImpl();

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<UserDto>  listUsers = new ArrayList<>();
		listUsers = userService.getAll();
		req.setAttribute("users", listUsers);
		req.getRequestDispatcher("listUsers.jsp").forward(req, resp);
	}
	
}
