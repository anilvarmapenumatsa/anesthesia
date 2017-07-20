package com.healthscience.utils;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.healthscience.model.Evaluationform;

@Component("evaluationFormValidation")
public class EvaluationFormValidation implements Validator{

	@SuppressWarnings("unchecked")
	@Override
	public boolean supports(Class clazz)
	{
		return Evaluationform.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object model, Errors errors)
	{
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "residentName","required.residentName", "residentName is required.");
		/*ValidationUtils.rejectIfEmptyOrWhitespace(errors, "START_DATE","required.START_DATE", "Start Date is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "END_DATE","required.END_DATE", "End Date is required.");*/
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "QUESTION","required.QUESTION", "can not be blank.");
		
		/*ValidationUtils.rejectIfEmpty(errors, "START_DATE","required.SURVEY_NAME", "Enter date");*/
	}

}
