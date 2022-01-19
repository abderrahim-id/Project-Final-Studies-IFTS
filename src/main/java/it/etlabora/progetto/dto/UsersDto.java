package it.etlabora.progetto.dto;

public class UsersDto {
	private Long id;	//Non sono sicuro che sia una variabile necessaria.
	private String name;
	private String surname;
	private String email;
	private String username;
	private String password;	//Non sono sicuro che sia una variabile necessaria.
	private Long type; // Non sono sicuro che sia di tipo Long!!!
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Long getType() {
		return type;
	}
	public void setType(Long type) {
		this.type = type;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
