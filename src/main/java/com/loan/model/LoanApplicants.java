package com.loan.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Table(name = "ms_loanApplicants")
@Entity
public class LoanApplicants {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "lnap_id")
	private int id;

	@Column(name = "lnap_cust_id")
	private Integer customer;

	@Transient
	private Customer customerObj;

	@Column(name = "lnap_apdate")
	private Date applicationDate;

	@Column(name = "lnap_lnty_id")
	private Integer loanTypeId;

	@Transient
	private LoanType loanTypeIdObj;

	@Column(name = "lnap_amount")
	private double loanAmount;

	@Column(name = "lnap_emi_range_from")
	private double emiRangeFrom;

	@Column(name = "lnap_emp_range_to")
	private double emiRangeTo;

	@Column(name = "lnap_nom_requested")
	private int numberOfMonthsRequested;

	@Column(name = "lnap_cibil_score")
	private double cibilScore;

	@Column(name = "lnap_status")
	private String status;

	@Column(name = "lnap_conclusion_remarks")
	private String conclusionRemarks;

	@Column(name = "lnap_processed_user")
	private Integer lastprocesseduser;

	@Transient
	private User lastprocesseduserObj;

	@Column(name = "lnap_processed_date")
	private Date processedDate;

	public LoanApplicants(int id, Integer customer, Date applicationDate, Integer loanTypeId, double loanAmount,
			double emiRangeFrom, double emiRangeTo, int numberOfMonthsRequested, double cibilScore, String status,
			String conclusionRemarks, Integer lastprocesseduser, Date processedDate) {
		super();
		this.id = id;
		this.customer = customer;
		this.applicationDate = applicationDate;
		this.loanTypeId = loanTypeId;
		this.loanAmount = loanAmount;
		this.emiRangeFrom = emiRangeFrom;
		this.emiRangeTo = emiRangeTo;
		this.numberOfMonthsRequested = numberOfMonthsRequested;
		this.cibilScore = cibilScore;
		this.status = status;
		this.conclusionRemarks = conclusionRemarks;
		this.lastprocesseduser = lastprocesseduser;
		this.processedDate = processedDate;
	}

	public LoanApplicants() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getCustomer() {
		return customer;
	}

	public void setCustomer(Integer customer) {
		this.customer = customer;
	}

	public Date getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(String applicationDate) {
		this.applicationDate = Date.valueOf(applicationDate);
	}

	public Integer getLoanTypeId() {
		return loanTypeId;
	}

	public void setLoanTypeId(Integer loanTypeId) {
		this.loanTypeId = loanTypeId;
	}

	public double getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}

	public double getEmiRangeFrom() {
		return emiRangeFrom;
	}

	public void setEmiRangeFrom(double emiRangeFrom) {
		this.emiRangeFrom = emiRangeFrom;
	}

	public double getEmiRangeTo() {
		return emiRangeTo;
	}

	public void setEmiRangeTo(double emiRangeTo) {
		this.emiRangeTo = emiRangeTo;
	}

	public int getNumberOfMonthsRequested() {
		return numberOfMonthsRequested;
	}

	public void setNumberOfMonthsRequested(int numberOfMonthsRequested) {
		this.numberOfMonthsRequested = numberOfMonthsRequested;
	}

	public double getCibilScore() {
		return cibilScore;
	}

	public void setCibilScore(double cibilScore) {
		this.cibilScore = cibilScore;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getConclusionRemarks() {
		return conclusionRemarks;
	}

	public void setConclusionRemarks(String conclusionRemarks) {
		this.conclusionRemarks = conclusionRemarks;
	}

	public Integer getLastprocesseduser() {
		return lastprocesseduser;
	}

	public void setLastprocesseduser(Integer lastprocesseduser) {
		this.lastprocesseduser = lastprocesseduser;
	}

	public Date getProcessedDate() {
		return processedDate;
	}

	public void setProcessedDate(String processedDate) {
		this.processedDate = Date.valueOf(processedDate);
	}

	// public void transfer(InputLoanApplicants obj) {
	// this.applicationDate = obj.getApplicationDate();
	// this.cibilScore = obj.getCibilScore();
	// this.conclusionRemarks = obj.getConclusionRemarks();
	// this.emiRangeFrom = obj.getEmiRangeFrom();
	// this.emiRangeTo = obj.getEmiRangeTo();
	// this.id = obj.getId();
	// this.loanAmount = obj.getLoanAmount();
	// this.status = obj.getStatus();
	// this.numberOfMonthsRequested = obj.getNumberOfMonthsRequested();
	// this.processedDate = obj.getProcessedDate();
	// this.customer = obj.getCustomer();
	// this.loanTypeId = obj.getLoanTypeId();
	// this.lastprocesseduser = obj.getLastprocesseduser();
	//
	// }

	// @Override
	// public String toString() {
	// return "LoanApplicants [id=" + id + ", customer=" + customer + ", applicationDate=" + applicationDate
	// + ", loanTypeId=" + loanTypeId + ", loanAmount=" + loanAmount + ", emiRangeFrom=" + emiRangeFrom
	// + ", emiRangeTo=" + emiRangeTo + ", numberOfMonthsRequested=" + numberOfMonthsRequested
	// + ", cibilScore=" + cibilScore + ", status=" + status + ", conclusionRemarks=" + conclusionRemarks
	// + ", lastprocesseduser=" + lastprocesseduser + ", processedDate=" + processedDate + "]";
	// }

}