package com.healthscience.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.healthscience.dao.EvaluationDAO;
import com.healthscience.model.Evaluationform;

@Service
@Transactional
public class EvaluationServiceImpl implements EvaluationService{
	
	@Autowired
	private EvaluationDAO evaluationDAO;

	@Override
	@Transactional
	public void addResidentEvaluationData(Evaluationform evaluationrf) {
		evaluationDAO.addResidentEvaluationData(evaluationrf);
	}
	
	@Override
	@Transactional
	public List<Evaluationform> getAllResidentEvaluation() {
		return evaluationDAO.getAllResidentEvaluation();
	}

}
