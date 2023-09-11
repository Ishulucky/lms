package com.loan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import com.loan.model.Customer;
import com.loan.model.LoanApplicantNominees;
import com.loan.model.LoanApplicants;
import com.loan.model.User;

public class LoanDAOImpl {
	@PersistenceContext
	private EntityManager em;

	public void persist(LoanApplicants l) {
		em.persist(l);
	}

	public List<LoanApplicants> getAllEmployees() {
		return em.createQuery("SELECT e FROM LoanApplicants  e").getResultList();
	}

	public void persist(User u) {
		em.persist(u);
	}

	public List<LoanApplicants> getAllUser() {
		return em.createQuery("SELECT e FROM User e").getResultList();
	}

	public void persiste(LoanApplicantNominees l) {
		em.persist(l);
	}

	public List<LoanApplicants> getAllNominees() {
		return em.createQuery("SELECT e FROM LoanApplicantNominees  e").getResultList();
	}

	public void persistCustomer(Customer l) {
		em.persist(l);
	}

	public List<Customer> getAllCustomers() {
		return em.createQuery("SELECT e FROM Customer  e").getResultList();
	}

	@Transactional
	public void edite(LoanApplicants u) {
		// Step 1: Load the Entity by ID
		LoanApplicants t = em.find(LoanApplicants.class, u.getId());

		if (t != null) {
			// Step 2: Modify the Entity
			t.setStatus(u.getStatus());
			t.setConclusionRemarks(u.getConclusionRemarks());

			// The changes will be automatically flushed and updated in the database upon transaction completion.
		}
	}
}