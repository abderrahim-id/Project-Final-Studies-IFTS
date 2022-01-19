package it.etlabora.progetto.service;

import java.util.List;

import it.etlabora.progetto.dto.BookDto;

public interface BookService {

	public BookDto create(BookDto dto);
	public BookDto update(BookDto dto);
	public BookDto getOne(BookDto dto);
	public void delete(Long id);
	public List<BookDto> getAll();
}
