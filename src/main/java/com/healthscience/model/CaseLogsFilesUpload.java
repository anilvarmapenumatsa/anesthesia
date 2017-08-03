package com.healthscience.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CASE_LOGS_FILES_UPLOAD")
public class CaseLogsFilesUpload implements Serializable{
	
	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	private String CASES_REGION;
	
	private String CARDIAC_WITH_CPB;
	
	private String CARDIAC_WITHOUT_CPB;
	

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getCASES_REGION() {
		return CASES_REGION;
	}

	public void setCASES_REGION(String cASES_REGION) {
		CASES_REGION = cASES_REGION;
	}

	public String getCARDIAC_WITH_CPB() {
		return CARDIAC_WITH_CPB;
	}

	public void setCARDIAC_WITH_CPB(String cARDIAC_WITH_CPB) {
		CARDIAC_WITH_CPB = cARDIAC_WITH_CPB;
	}

	public String getCARDIAC_WITHOUT_CPB() {
		return CARDIAC_WITHOUT_CPB;
	}

	public void setCARDIAC_WITHOUT_CPB(String cARDIAC_WITHOUT_CPB) {
		CARDIAC_WITHOUT_CPB = cARDIAC_WITHOUT_CPB;
	}
	
}
