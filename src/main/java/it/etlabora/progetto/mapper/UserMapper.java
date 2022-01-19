package it.etlabora.progetto.mapper;

import java.util.ArrayList;
import java.util.List;

import it.etlabora.progetto.dto.UserDto;
import it.etlabora.progetto.model.User;

public class UserMapper {


    public UserDto toDto(User user) {
        if(user == null) return null;
        UserDto dto = new UserDto();
        dto.setEmail(user.getEmail());
        dto.setId(user.getId());
        dto.setPassword(user.getPassword());
        dto.setName(user.getName());
        dto.setSurname(user.getSurname());
        dto.setType(user.getType());
        dto.setUsername(user.getUsername());
        return dto;
    }
    
    public User toModel(UserDto dto) {
        if(dto == null) return null;
        User user = new User();
        user.setEmail(dto.getEmail());
        user.setId(dto.getId());
        user.setPassword(dto.getPassword());
        user.setName(dto.getName());
        user.setSurname(dto.getSurname());
        user.setType();
        user.setUsername(dto.getUsername());
        return user;
    }
    
    public List<User> toModel(List<UserDto> dtos){
        if(dtos == null) return null;
        List<User> users = new ArrayList<>();
        for(UserDto dto:dtos) {
            users.add(toModel(dto));
        }
        return users;
    }
    
    public List<UserDto> toDto(List<User> users){
        if(users == null) return null;
        List<UserDto> dtos = new ArrayList<>();
        for(User user:users) {
            dtos.add(toDto(user));
        }
        return dtos;
    }
}
