package com.healthscience.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.healthscience.model.CaseLogsFilesUpload;

@Repository
@Transactional
public class CaseLogsFilesUploadDAOIMPL implements CaseLogsFilesUploadDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void getCaseLogsFilesUpload(CaseLogsFilesUpload caseLogsFilesUpload) {
		sessionFactory.getCurrentSession().save(caseLogsFilesUpload);

	}

}
