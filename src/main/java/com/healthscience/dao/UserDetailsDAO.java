package com.healthscience.dao;

import com.healthscience.model.UserDetail;

public interface UserDetailsDAO {
	
	 int save(UserDetail userDetail) ;
	 
	 UserDetail getByusername(String username);
	 
	 void update(UserDetail userDetail);

	 void deleteUserDetails(String username);
}
