package com.healthscience.dao;

import java.util.List;

import com.healthscience.model.UserInfo;

public interface UserInfoDAO {
	
	List<UserInfo> getUserData();
	
	int save(UserInfo userInfo);

}
