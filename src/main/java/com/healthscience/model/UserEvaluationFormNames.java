
package com.healthscience.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "USER_EVALUATION_FORMNAMES")
public class UserEvaluationFormNames implements Serializable {

	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@SequenceGenerator(name = "seq_contacts", sequenceName = "seq_contacts")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_contacts")
	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFormnames() {
		return formnames;
	}

	public void setFormnames(String formnames) {
		this.formnames = formnames;
	}

	@Column
	private String formnames;
	

}
