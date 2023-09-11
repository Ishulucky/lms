package com.loan.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.loan.dao.LoanDAOImpl;
import com.loan.model.Customer;
import com.loan.model.LoanApplicantNominees;
import com.loan.model.LoanApplicants;
import com.loan.model.User;

public class LoanService {
	private LoanDAOImpl loandao;

	@Autowired
	public LoanService(LoanDAOImpl loandao) {
		this.loandao = loandao;
	}

	@Transactional
	public void add(LoanApplicants l) {
		loandao.persist(l);
	}

	@Transactional
	public void addAll(Collection<LoanApplicants> l) {
		for (LoanApplicants loan : l) {
			loandao.persist(loan);
		}
	}

	@Transactional(readOnly = true)
	public List<LoanApplicants> listAll() {
		return loandao.getAllEmployees();

	}

	////////////////////////////// users
	@Transactional
	public void adduser(User u) {
		loandao.persist(u);
	}

	@Transactional(readOnly = true)
	public List<LoanApplicants> listUser() {
		return loandao.getAllUser();

	}

	//////////////////// loannomineee
	@Transactional
	public void addn(LoanApplicantNominees l) {
		loandao.persiste(l);
	}

	@Transactional(readOnly = true)
	public List<LoanApplicants> listAlln() {
		return loandao.getAllEmployees();

	}

	//////// customer
	@Transactional
	public void addCustomer(Customer l) {
		loandao.persistCustomer(l);
	}

	@Transactional
	public void addAllCustomer(Collection<Customer> l) {
		for (Customer loan : l) {
			loandao.persistCustomer(loan);
		}
	}

	@Transactional(readOnly = true)
	public List<Customer> listAllCustomer() {
		return loandao.getAllCustomers();

	}

	public void edit(LoanApplicants l) {
		// TODO Auto-generated method stub
		loandao.edite(l);
	}

}