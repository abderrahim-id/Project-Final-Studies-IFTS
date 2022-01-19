package it.etlabora.progetto.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.etlabora.progetto.dto.BookDto;
import it.etlabora.progetto.service.BookService;
import it.etlabora.progetto.serviceImpl.BookServiceImpl;

public class BookDetails extends HttpServlet {

	private static final long serialVersionUID = 1L;
	BookService bookService = new BookServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idStr = req.getParameter("id");
		
		try {
			Integer id = Integer.parseInt(idStr);
			BookDto book = bookService.getOne(id);
			if(book == null) {
				req.setAttribute("message", "The book with the id = " + id + " is not exist");
				req.getRequestDispatcher("bookDetails.jsp").forward(req, resp);
			} else {
				req.setAttribute("book", book);
				req.getRequestDispatcher("bookDetails.jsp").forward(req, resp);
			}
			
		} 
		catch (Exception e) {	System.out.println("No id: new user"); }
		
		
	}

}
