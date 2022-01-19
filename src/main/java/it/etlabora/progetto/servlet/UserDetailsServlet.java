package it.etlabora.progetto.servlet;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.etlabora.progetto.dto.UserDto;
import it.etlabora.progetto.service.UserService;
import it.etlabora.progetto.serviceImpl.UserServiceImpl;


public class UserDetailsServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	UserService userService = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDto userDto = new UserDto();
		String idStr = req.getParameter("id");
		
		
		userDto.setName(req.getParameter("name"));
		userDto.setSurname(req.getParameter("surname"));
		userDto.setUsername(req.getParameter("username"));
		userDto.setPassword(req.getParameter("password"));
		userDto.setEmail(req.getParameter("email"));
	

		try {	userDto.setId(Integer.parseInt(idStr));  } 
		catch (Exception e) {	System.out.println("No id: new user"); }
		
		
		if (userDto.getId() == null) {
			req.setAttribute("message", "Created Succesfuly");
			userService.create(userDto);
		} else {
			req.setAttribute("message", "Updated Succesfuly");
			userService.update(userDto);
		}
		

		req.setAttribute("user", userDto);
		req.getRequestDispatcher("user-details.jsp").forward(req, resp);
	}

}
