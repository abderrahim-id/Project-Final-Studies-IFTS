package it.etlabora.progetto.service;

import java.util.List;

import it.etlabora.progetto.dto.UserDto;

public interface UserService {
	
	public UserDto create(UserDto userDto);
	public UserDto update(UserDto userDto);
	public UserDto getOne(Integer id);
	public void delete(Integer id);
	public List<UserDto> getAll();
	

}
