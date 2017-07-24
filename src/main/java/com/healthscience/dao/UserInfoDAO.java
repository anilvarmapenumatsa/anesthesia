package com.healthscience.dao;

import java.util.List;

import com.healthscience.model.UserEvaluationFormNames;
import com.healthscience.model.UserInfo;

public interface UserInfoDAO {
	
	List<UserInfo> getUserData();
	
	int save(UserInfo userInfo);
	
	int addUserEvaluationFromNames(UserEvaluationFormNames userEvaluationFormNames);
	
	List<String> getUserNames();
	
	List<String> getUserFormNames();
	
	void deleteUserInfo(String username);

}
