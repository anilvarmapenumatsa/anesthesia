package com.healthscience.dao;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.healthscience.model.UserDetail;

@Repository
@Transactional
public class UserDetailsDAOImpl implements UserDetailsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public int save(UserDetail userDetail) {
		return (Integer) sessionFactory.getCurrentSession().save(userDetail);
	}

	public UserDetail getByusername(String username) {
		/*
		 * return (UserDetail)
		 * sessionFactory.getCurrentSession().get(UserDetail.class, username);
		 */

		/*
		 * Session session = sessionFactory.openSession();
		 * session.beginTransaction(); String sql =
		 * "SELECT * FROM USER_DETAILS ud where ud.username = :username";
		 * SQLQuery query = session.createSQLQuery(sql);
		 * query.addEntity(UserDetail.class); return query.list();
		 */

		/*Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserDetail.class)
				.add(Restrictions.eq("username", username));
		return criteria.list();*/
		
		/*return (UserDetail) sessionFactory.getCurrentSession().get(UserDetail.class, username);*/
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserDetail.class);
        criteria.add(Restrictions.like("username", username));
        return (UserDetail) criteria.uniqueResult();
	}

	public void update(UserDetail userDetail) {
		sessionFactory.getCurrentSession().merge(userDetail);
	}

	
	public void deleteUserDetails(String username) {
		String hql = "delete from UserDetail where username= :username";
		sessionFactory.getCurrentSession().createQuery(hql).setString("username", username).executeUpdate();
		
	}

}
