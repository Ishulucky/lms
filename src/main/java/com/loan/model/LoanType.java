package com.loan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ms_loantypes")
public class LoanType {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "lnty_id")
	private int id;

	@Column(name = "lnty_name", length = 50)
	private String name;

	@Column(name = "lnty_desc", length = 255)
	private String description;

	public LoanType() {
		super();
	}

	public LoanType(int id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "LoanType=" + id;
	}

}
