package it.etlabora.progetto.mapper;

import java.util.ArrayList;
import java.util.List;

import it.etlabora.progetto.dto.BookDto;
import it.etlabora.progetto.model.Book;

public class BookMapper {
	
	public BookDto toDto(Book book) {
		if (book == null) return null;
		BookDto bookDto = new BookDto();
		bookDto.setCategory(book.getCategory());
		bookDto.setAuthors(book.getAuthors());
		bookDto.setId(book.getId());
		bookDto.setIsbn(book.getIsbn());
		bookDto.setPublisher(book.getPublisher());
		bookDto.setTitle(book.getTitle());
		bookDto.setState(book.getState());
		bookDto.setNote(book.getNote());
		return bookDto;
		}
		public Book toModel(BookDto dto) {
			if (dto == null) return null;
			Book book = new Book();
			book.setAuthors(dto.getAuthors());
			book.setCategory(dto.getCategory());
			book.setId(dto.getId());
			book.setIsbn(dto.getIsbn());
			book.setNote(dto.getNote());
			book.setPublisher(dto.getPublisher());
			book.setState(dto.getTitle());
			book.setTitle(dto.getTitle());
			return book;
			}
		
		public List<BookDto> toDto(List<Book> books){
			if (books == null) return null;
			List<BookDto> dtoBooks = new ArrayList<>();
			for(Book book: books) {
				dtoBooks.add(toDto(book));
				}
			return dtoBooks;
			}

		public List<Book> toModel(List<BookDto> booksDto){
			if (booksDto == null) return null;
			List<Book> books = new ArrayList<>();
			for(BookDto bookDto: booksDto) {
				books.add(toModel(bookDto));
				}
			return books;
			}
		}