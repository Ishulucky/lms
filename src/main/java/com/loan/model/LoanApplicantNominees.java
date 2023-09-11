package com.loan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "loanapplicantsnominees")
public class LoanApplicantNominees {

	@Id
	@Column(name = "lnap_id")
	private int nid;

	@Column(name = "lnap_nominee")
	private String nominee;

	@Column(name = "lanp_relation")
	private String relation;

	public LoanApplicantNominees() {
		super();
	}

	public LoanApplicantNominees(int nid, String nominee, String relation) {
		super();
		this.nid = nid;
		this.nominee = nominee;
		this.relation = relation;
	}

	@Override
	public String toString() {
		return "LoanApplicantNominees [nid=" + nid + ", nominee=" + nominee + ", relation=" + relation + "]";
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getNominee() {
		return nominee;
	}

	public void setNominee(String nominee) {
		this.nominee = nominee;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

}