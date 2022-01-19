package it.etlabora.progetto.serviceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import it.etlabora.progetto.dto.BookDto;
import it.etlabora.progetto.mapper.BookMapper;
import it.etlabora.progetto.model.Book;
import it.etlabora.progetto.service.BookService;
import it.etlabora.progetto.util.DbConnection;

public class BookServiceImpl implements BookService{
	
	private BookMapper bookMapper = new BookMapper();

	@Override
	public BookDto create(BookDto dto) {
		if(dto == null) {
		return null;
	}
		if (dto.getId() !=null) {
			return this.update(dto);
		}
		BookDto savedDto = null;
		try {
			Connection conn = DbConnection.getConnection();
			Book entity = bookMapper.toModel(dto);
			String sql = "INSERT INTO books  ( title, publisher,authors, category, isbn, note, state )  VALUES (?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, entity.getTitle());
			statement.setString(2, entity.getPublisher());
			statement.setString(3, entity.getAuthors());
			statement.setString(4, entity.getCategory());
			statement.setString(5, entity.getIsbn());
			statement.setString(6, entity.getNote());
			statement.setString(7, entity.getState());
			
			statement.executeUpdate();
			
			String sql2 = "SELECT MAX(id) FROM books";
			PreparedStatement statement2 = conn.prepareStatement (sql2);
			ResultSet rs = statement2.executeQuery();
			rs.next();
			Integer id = rs.getInt(1);
			conn.close();
			
			savedDto = this.getOne(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return savedDto;
		}
	
	@Override
	public BookDto update(BookDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BookDto getOne(Integer id) {
		if(id == null) return null;
		BookDto bookDto = null;
		try {
			Connection connection = DbConnection.getConnection();
			String sql = "SELECT * FROM books WHERE id = ?";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet rs = statement.executeQuery();

			rs.next();
			Book book= new Book();
			
			book.setId(rs.getInt("id"));
			book.setTitle(rs.getString("title"));
			book.setPublisher(rs.getString("publisher"));
			book.setAuthors(rs.getString("authors"));
			book.setCategory(rs.getString("category"));
			book.setIsbn(rs.getString("isbn"));
			book.setNote(rs.getString("note"));
			book.setState(rs.getString("state"));
			
			bookDto = bookMapper.toDto(book);
			
			connection.close();
		} catch(SQLException sqlEx) {
			System.out.println("So the problem is in the Sql");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return bookDto;
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BookDto> getAll() {
		List<BookDto> booksDto = new ArrayList<>();

		try {
			Connection conn = DbConnection.getConnection();
			String sql = "SELECT * FROM books ORDER BY title";

			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();

			Book book;
			while (rs.next()) {
				book = new Book();

				book.setId(rs.getInt("id"));
				book.setTitle(rs.getString("title"));
				book.setPublisher(rs.getString("publisher"));
				book.setAuthors(rs.getString("authors"));
				book.setCategory(rs.getString("category"));
				book.setIsbn(rs.getString("isbn"));
				book.setNote(rs.getString("note"));
				book.setState(rs.getString("state"));
				
				booksDto.add(bookMapper.toDto(book));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return booksDto;
	}
}