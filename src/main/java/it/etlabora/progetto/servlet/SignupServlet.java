package it.etlabora.progetto.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.etlabora.progetto.dto.UserDto;
import it.etlabora.progetto.service.UserService;
import it.etlabora.progetto.serviceImpl.UserServiceImpl;

public class SignupServlet extends HttpServlet {
	
	UserService userService = new UserServiceImpl();

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idStr = req.getParameter("id");
		System.out.println("This is the inputed id: " + idStr);
		Integer id = null;
		
		try {
			id = Integer.parseInt(idStr);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("No id: returning all users");
		}
		
		if (id == null) {
			req.getRequestDispatcher("signup.jsp").forward(req, resp);
		} else {
			try {
				UserDto user = userService.getOne(id);
				System.out.println("User name : " + user.getName());
				req.setAttribute("user", user);
				req.getRequestDispatcher("signup.jsp").forward(req, resp);
			} catch(Exception e) {
				req.setAttribute("error", "There is no user with the targeted id");
				req.getRequestDispatcher("signup.jsp").forward(req, resp);
			}
		}

	}
	

	//@Override
	//protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {}
	
	
}
