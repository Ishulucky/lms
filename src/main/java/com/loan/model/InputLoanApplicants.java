package com.loan.model;

public class InputLoanApplicants {

	// customer
	private Integer cid;
	private String firstName;
	private String lastName;
	private String dateOfBirth;
	private String panNumber;
	private long mobileNumber;
	private String address;
	private String guardianName;

	// loan
	private Integer customer;
	private String applicationDate;
	private Integer loanTypeId;
	private LoanType loanTypeIdObj;
	private double loanAmount;
	private double emiRangeFrom;
	private double emiRangeTo;
	private int numberOfMonthsRequested;

	// nominee
	private int nid;
	private String nominee;

	public InputLoanApplicants() {
		super();
	}

	public InputLoanApplicants(Integer cid, String firstName, String lastName, String dateOfBirth, String panNumber,
			long mobileNumber, String address, String guardianName, Integer customer, String applicationDate,
			Integer loanTypeId, LoanType loanTypeIdObj, double loanAmount, double emiRangeFrom, double emiRangeTo,
			int numberOfMonthsRequested, int nid, String nominee, String relation) {
		super();
		this.cid = cid;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.panNumber = panNumber;
		this.mobileNumber = mobileNumber;
		this.address = address;
		this.guardianName = guardianName;
		this.customer = customer;
		this.applicationDate = applicationDate;
		this.loanTypeId = loanTypeId;
		this.loanTypeIdObj = loanTypeIdObj;
		this.loanAmount = loanAmount;
		this.emiRangeFrom = emiRangeFrom;
		this.emiRangeTo = emiRangeTo;
		this.numberOfMonthsRequested = numberOfMonthsRequested;
		this.nid = nid;
		this.nominee = nominee;
		this.relation = relation;
	}

	@Override
	public String toString() {
		return "InputLoanApplicants [cid=" + cid + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", dateOfBirth=" + dateOfBirth + ", panNumber=" + panNumber + ", mobileNumber=" + mobileNumber
				+ ", address=" + address + ", guardianName=" + guardianName + ", customer=" + customer
				+ ", applicationDate=" + applicationDate + ", loanTypeId=" + loanTypeId + ", loanTypeIdObj="
				+ loanTypeIdObj + ", loanAmount=" + loanAmount + ", emiRangeFrom=" + emiRangeFrom + ", emiRangeTo="
				+ emiRangeTo + ", numberOfMonthsRequested=" + numberOfMonthsRequested + ", nid=" + nid + ", nominee="
				+ nominee + ", relation=" + relation + "]";
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPanNumber() {
		return panNumber;
	}

	public void setPanNumber(String panNumber) {
		this.panNumber = panNumber;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGuardianName() {
		return guardianName;
	}

	public void setGuardianName(String guardianName) {
		this.guardianName = guardianName;
	}

	public Integer getCustomer() {
		return customer;
	}

	public void setCustomer(Integer customer) {
		this.customer = customer;
	}

	public String getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(String applicationDate) {
		this.applicationDate = applicationDate;
	}

	public Integer getLoanTypeId() {
		return loanTypeId;
	}

	public void setLoanTypeId(Integer loanTypeId) {
		this.loanTypeId = loanTypeId;
	}

	public LoanType getLoanTypeIdObj() {
		return loanTypeIdObj;
	}

	public void setLoanTypeIdObj(LoanType loanTypeIdObj) {
		this.loanTypeIdObj = loanTypeIdObj;
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

	private String relation;

}