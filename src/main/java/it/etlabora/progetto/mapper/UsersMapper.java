package it.etlabora.progetto.mapper;

import it.etlabora.progetto.dto.UsersDto;
import it.etlabora.progetto.model.Users;

public class UsersMapper {
	
	public UsersDto toDto (Users users) {
		if (users == null) return null;
		UsersDto dto = new UsersDto();
		dto.setId(users.getId());
		dto.setName(users.getName());
		dto.setSurname(users.getSurname());
		dto.setEmail(users.getEmail());
		dto.setUsername(users.getUsername());
		dto.setPassword(users.getPassword());
		return dto;
	}
}
