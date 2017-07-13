package com.healthscience.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.healthscience.model.UserInfo;

@Repository
@Transactional
public class UserInfoDAOImpl implements UserInfoDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<UserInfo> getUserData()
	{
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserInfo.class);
		return criteria.list();
	}
	
	public int save(UserInfo userInfo)
	{
		return (Integer) sessionFactory.getCurrentSession().save(userInfo);
	}

}
