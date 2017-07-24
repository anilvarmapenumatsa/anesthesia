package com.healthscience.dao;

import java.util.List;

import javax.websocket.Session;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.healthscience.model.UserEvaluationFormNames;
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
		/*Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "SELECT * FROM users";
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(UserInfo.class);
        return query.list();*/
	}
	
	public int save(UserInfo userInfo)
	{
		return (Integer) sessionFactory.getCurrentSession().save(userInfo);
	}
	
	public void deleteUserInfo(String username)
	{
		/*UserInfo userInfo = (UserInfo ) sessionFactory.getCurrentSession().createCriteria(UserInfo.class)
                .add(Restrictions.eq("username", username)).uniqueResult();
		if (null != userInfo) {
			this.sessionFactory.getCurrentSession().delete(userInfo);
		}*/
		String hql = "delete from UserInfo where username= :username";
		sessionFactory.getCurrentSession().createQuery(hql).setString("username", username).executeUpdate();

	}
	
	@SuppressWarnings("unchecked")
	public List<String> getUserNames()
	{
		/*Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserInfo.class);*/
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserInfo.class)
			    .setProjection(Projections.projectionList()
			      .add(Projections.property("username"), "username"));
		 return criteria.list();
		 
		
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getUserFormNames()
	{
		/*Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserInfo.class);*/
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserEvaluationFormNames.class)
			    .setProjection(Projections.projectionList()
			      .add(Projections.property("formnames"), "formnames"));
		 return criteria.list();
		 
		
	}

	@Override
	public int addUserEvaluationFromNames(UserEvaluationFormNames userEvaluationFormNames) {
		return (Integer) sessionFactory.getCurrentSession().save(userEvaluationFormNames);
	}

}
