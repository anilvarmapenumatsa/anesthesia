package com.healthscience.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "evaluationdata")
public class Evaluationform implements Serializable{
	
	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	

	@Column
	private String residentName;
	
	@Column
	private String residentDate;
	
	@Column
	private String medicalKnowledge;
	
	@Column
	private String mkComment;
	
	@Column
	private String technicalSkills;
	
	@Column
	private String tsComment;
	
	@Column
	private String teamWork;
	
	@Column
	private String twComment;
	
	@Column
	private String leadership;
	
	@Column
	private String lsComment;
	
	@Column
	private String professionalism;
	
	@Column
	private String pfComment;
	
	@Column
	private String evaluationComment;
	
	@Column
	private String goalsComment;
	
	@Column
	private String evaluatorName;
	
	@Column
	private String evaluatorDate;
	
	@Column
	private String residentRank;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getResidentName() {
		return residentName;
	}

	public void setResidentName(String residentName) {
		this.residentName = residentName;
	}

	public String getResidentDate() {
		return residentDate;
	}

	public void setResidentDate(String residentDate) {
		this.residentDate = residentDate;
	}

	public String getMedicalKnowledge() {
		return medicalKnowledge;
	}

	public void setMedicalKnowledge(String medicalKnowledge) {
		this.medicalKnowledge = medicalKnowledge;
	}

	public String getMkComment() {
		return mkComment;
	}

	public void setMkComment(String mkComment) {
		this.mkComment = mkComment;
	}

	public String getTechnicalSkills() {
		return technicalSkills;
	}

	public void setTechnicalSkills(String technicalSkills) {
		this.technicalSkills = technicalSkills;
	}

	public String getTsComment() {
		return tsComment;
	}

	public void setTsComment(String tsComment) {
		this.tsComment = tsComment;
	}

	public String getTeamWork() {
		return teamWork;
	}

	public void setTeamWork(String teamWork) {
		this.teamWork = teamWork;
	}

	public String getTwComment() {
		return twComment;
	}

	public void setTwComment(String twComment) {
		this.twComment = twComment;
	}

	public String getLeadership() {
		return leadership;
	}

	public void setLeadership(String leadership) {
		this.leadership = leadership;
	}

	public String getLsComment() {
		return lsComment;
	}

	public void setLsComment(String lsComment) {
		this.lsComment = lsComment;
	}

	public String getProfessionalism() {
		return professionalism;
	}

	public void setProfessionalism(String professionalism) {
		this.professionalism = professionalism;
	}

	public String getPfComment() {
		return pfComment;
	}

	public void setPfComment(String pfComment) {
		this.pfComment = pfComment;
	}

	public String getEvaluationComment() {
		return evaluationComment;
	}

	public void setEvaluationComment(String evaluationComment) {
		this.evaluationComment = evaluationComment;
	}

	public String getGoalsComment() {
		return goalsComment;
	}

	public void setGoalsComment(String goalsComment) {
		this.goalsComment = goalsComment;
	}

	public String getEvaluatorName() {
		return evaluatorName;
	}

	public void setEvaluatorName(String evaluatorName) {
		this.evaluatorName = evaluatorName;
	}

	public String getEvaluatorDate() {
		return evaluatorDate;
	}

	public void setEvaluatorDate(String evaluatorDate) {
		this.evaluatorDate = evaluatorDate;
	}

	public String getResidentRank() {
		return residentRank;
	}

	public void setResidentRank(String residentRank) {
		this.residentRank = residentRank;
	}


	
}
