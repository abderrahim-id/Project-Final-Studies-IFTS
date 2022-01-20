package it.etlabora.progetto.serviceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
			
			String sql2 = "SELECT MAX(id) FORM users";
			PreparedStatement statement2 = connection.prepareStatement(sql2);
			ResultSet rs = statement2.executeQuery();
			rs.next();
			Integer id = rs.getInt(1);
			
			
			
			connection.close();
			
			savedUserDto = this.getOne(id); 
		}catch(SQLException sqlEx) {
			System.out.println("__________ The user is not created : the problem is in the sql __________");
			sqlEx.printStackTrace();
			System.out.println("__________________");
			
		}
		catch(Exception e){
			System.out.println("The user is not created");
			e.printStackTrace();
		}
		
		return savedUserDto;
	}
	
	// _______________________ getOne Method
		@Override
		public UserDto getOne(Integer id) {
			if(id == null) return null;
			UserDto dto = null;
			try {
				Connection connection = DbConnection.getConnection();
				String sql = "SELECT * FROM users WHERE id = ?";
				PreparedStatement statement = connection.prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();

				rs.next();
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setSurname(rs.getString("surname"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				dto = userMapper.toDto(user);
				
				connection.close();
			} catch(SQLException sqlEx) {
				System.out.println("So the problem is in the Sql");
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			return dto;
		}
		
		// _______________________ getOneByUsername Method
				public UserDto getOneByUsername(String username) {
					if(username == null) return null;
					UserDto dto = null;
					try {
						Connection connection = DbConnection.getConnection();
						String sql = "SELECT * FROM users WHERE username = ?";
						PreparedStatement statement = connection.prepareStatement(sql);
						statement.setString(1, username);
						ResultSet rs = statement.executeQuery();

						rs.next();
						User user = new User();
						user.setId(rs.getInt("id"));
						user.setEmail(rs.getString("email"));
						user.setName(rs.getString("name"));
						user.setSurname(rs.getString("surname"));
						user.setUsername(rs.getString("username"));
						user.setPassword(rs.getString("password"));
						dto = userMapper.toDto(user);
						
						connection.close();
					} catch(SQLException sqlEx) {
						System.out.println("So the problem is in the Sql");
					}
					catch (Exception e) {
						e.printStackTrace();
					}
					return dto;
				}
	

	// _______________________ update Method
	@Override
	public UserDto update(UserDto userDto) {	
		
		if (userDto == null) return null;
		
		if (userDto.getId() == null) {
			return this.create(userDto);
		}
		UserDto savedDto = null;
		try {
			Connection conn = DbConnection.getConnection();
			User entity = userMapper.toModel(userDto);
			String sql = "UPDATE users SET name=?, surname=?, email=?, username=?, password=?, type=? WHERE id=?";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, entity.getName());
			statement.setString(2, entity.getSurname());
			statement.setString(3, entity.getEmail());
			statement.setString(4, entity.getUsername());
			statement.setString(5, entity.getPassword());
			statement.setBoolean(6, entity.getType());
			
			statement.setInt(7, entity.getId());

			int updated = statement.executeUpdate();
			if (updated != 1) {
				throw new Exception("Entity has been deleted");
			}

			conn.close();

			savedDto = this.getOne(entity.getId());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return savedDto;
		
	}

	

	// _______________________ delete Method
	@Override
	public void delete(Integer id) {
		if(id == null) System.out.println("The id is null: No user is deleted");
		try {
			Connection conn = DbConnection.getConnection();
			String sql = "DELETE FROM users WHERE id = ?";

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);
			
			ResultSet rs = statement.executeQuery(); 
			rs.next();
			
			} catch (SQLException sqlEx) {
				System.out.println("No user is deleted - The problem is in the SQL");
				sqlEx.printStackTrace();
			} catch (Exception e) {
				System.out.println("No user is deleted");
				e.printStackTrace();
			}
	}

	
	// _______________________ getAll Method
	@Override
	public List<UserDto> getAll() {	
		List<UserDto> usersDto = new ArrayList<>();

		try {
			Connection conn = DbConnection.getConnection();
			String sql = "SELECT * FROM users";

			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();

			User user;
			while (rs.next()) {
				user = new User();

				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setSurname(rs.getString("surname"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				usersDto.add(userMapper.toDto(user));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return usersDto;
	}
}
