package it.etlabora.progetto.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.etlabora.progetto.dto.UserDto;
import it.etlabora.progetto.service.UserService;
import it.etlabora.progetto.serviceImpl.UserServiceImpl;

public class LogServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	UserServiceImpl userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String psw = req.getParameter("password");
		
		
		if(username != null && psw != null) {
			UserDto user = userService.getOneByUsername(username);
			if(user == null) {
				req.setAttribute("message", "Username or password is not correct");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			} else {
				// TODO: sign in & create session & redirect to catalog
				req.getRequestDispatcher("Homepage.jsp").forward(req, resp);
			}
		}
		
		req.getRequestDispatcher("login.jsp").forward(req, resp);
		
	}

}
