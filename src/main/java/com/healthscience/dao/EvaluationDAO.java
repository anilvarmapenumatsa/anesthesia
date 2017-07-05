package com.healthscience.dao;

import java.util.List;

import com.healthscience.model.Evaluationform;

public interface EvaluationDAO {
	
	public void addResidentEvaluationData(Evaluationform evaluationrf);
	
	public List<Evaluationform> getAllResidentEvaluation();
	
	public void deleteEvaluationInformation(Integer evaluationId);
}
