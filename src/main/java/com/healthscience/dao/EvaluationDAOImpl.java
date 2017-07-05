package com.healthscience.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.healthscience.model.Evaluationform;

@Repository
public class EvaluationDAOImpl implements EvaluationDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addResidentEvaluationData(Evaluationform evaluationrf) {
		sessionFactory.getCurrentSession().saveOrUpdate(evaluationrf);

	}
	
	@SuppressWarnings("unchecked")
	public List<Evaluationform> getAllResidentEvaluation() {

		return sessionFactory.getCurrentSession().createQuery("from Evaluationform")
				.list();
	}

}
