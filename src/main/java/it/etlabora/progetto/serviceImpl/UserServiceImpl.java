package it.etlabora.progetto.serviceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import it.etlabora.progetto.dto.UserDto;
import it.etlabora.progetto.mapper.UserMapper;
import it.etlabora.progetto.model.User;
import it.etlabora.progetto.service.UserService;
import it.etlabora.progetto.util.DbConnection;

public class UserServiceImpl implements UserService {

	private UserMapper userMapper= new UserMapper();

	@Override
	public UserDto create(UserDto userDto) {
		if(userDto == null) return null;
		if(userDto.getId() != null) return this.update(userDto);
		
		UserDto savedUserDto = null;
		try {
			
			Connection connection = DbConnection.getConnection();
			User entity = userMapper.toModel(userDto);
			String sql = "INSERT INTO users (name, surname, email, username, password, type) VALUES (?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1,entity.getName());
			statement.setString(2,entity.getSurname());
			statement.setString(3,entity.getEmail());
			statement.setString(4,entity.getUsername());
			statement.setString(5,entity.getPassword());
			statement.setBoolean(6,entity.getType());
			
			statement.executeUpdate();
			
			String sql2 = "SELECT MAX(id) FORM nation";
			PreparedStatement statement2 = connection.prepareStatement(sql2);
			ResultSet rs = statement2.executeQuery();
			rs.next();
			Integer id = rs.getInt(1);
			connection.close();
			
			savedUserDto = this.getOne(id); 
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return savedUserDto;
	}

	@Override
	public UserDto update(UserDto userDto) {
		
		return null;
	}

	@Override
	public UserDto getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<UserDto> getAll() {
		// TODO Auto-generated method stub
		return null;
	}
}
