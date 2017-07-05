package com.healthscience.service;

import java.util.List;

import com.healthscience.model.Evaluationform;

public interface EvaluationService {
	
	public void addResidentEvaluationData(Evaluationform evaluationrf);
	
	public List<Evaluationform> getAllResidentEvaluation();

}
