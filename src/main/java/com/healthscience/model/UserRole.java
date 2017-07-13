package com.healthscience.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name = "user_roles")
public class UserRole implements Serializable{
	
	private static final long serialVersionUID = -3465813074586302847L;
	
	@Id
	@SequenceGenerator(name = "seq_contacts", sequenceName = "seq_contacts")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_contacts")
	private int user_role_id;

	@Column
	private String username;
	
	@Column
	private String role;
	
	@ManyToOne
	@JoinColumn(name ="userid")	
	private UserInfo userInfo;
	 
    public UserRole() {
    }
    

	public int getUser_role_id() {
		return user_role_id;
	}


	public void setUser_role_id(int user_role_id) {
		this.user_role_id = user_role_id;
	}
    

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

}
