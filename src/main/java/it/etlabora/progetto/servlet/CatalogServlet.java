package it.etlabora.progetto.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.etlabora.progetto.dto.BookDto;
import it.etlabora.progetto.serviceImpl.BookServiceImpl;

public class CatalogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BookServiceImpl bookService = new BookServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String search = req.getParameter("search");
		if(search != null) {
			BookDto book = bookService.searchByName(search);
			if(book == null) {
				req.setAttribute("message", "There is no book with a title \""+search+"\"");
				req.getRequestDispatcher("catalog.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("book", book);
				req.getRequestDispatcher("catalog.jsp").forward(req, resp);
			}
		} else {
			List<BookDto> books = bookService.getAll();
			req.setAttribute("books", books);
			req.getRequestDispatcher("catalog.jsp").forward(req, resp);
		}
		
		
	}
}
