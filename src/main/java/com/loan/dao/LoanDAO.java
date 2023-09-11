package com.loan.dao;

import java.util.List;

import com.loan.model.Customer;
import com.loan.model.LoanApplicantNominees;
import com.loan.model.LoanApplicants;
import com.loan.model.User;

public interface LoanDAO {
	void persist(LoanApplicants l);

	void persist(User u);

	List<LoanApplicants> getAllEmployees();

	void persiste(LoanApplicantNominees l);

	List<LoanApplicantNominees> getAllNominees();

	void persistCustomer(Customer l);

	List<Customer> getAllCustomers();

	void edite(LoanApplicants u);
}