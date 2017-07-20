package com.healthscience.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.healthscience.model.UserRole;

@Repository
@Transactional
public class UserRoleDAOImpl implements UserRoleDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public int save(UserRole userRole) {
		return (Integer) sessionFactory.getCurrentSession().save(userRole);
	}

	
	public void deleteUserRole(String username) {

		String hql = "delete from UserRole where username= :username";
		sessionFactory.getCurrentSession().createQuery(hql).setString("username", username).executeUpdate();

	}

}
