package com.insurance.Insurance.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.insurance.Insurance.contracts.InsuranceDAO;
import com.insurance.Insurance.model.InsurancePolicy;
import com.insurance.Insurance.model.InsurancePolicySchedule;
import com.insurance.Insurance.model.InsuranceUser;

@Repository
public class InsuranceRepository {
	@Autowired
	private InsuranceDAO insudao;

	public List<InsurancePolicySchedule> ListAllPolicySchedules() {
		List<InsurancePolicySchedule> s = insudao.getAllSchedule();
		return s;
	}
	//
	// public int ListNonStatusPayments(int id) {
	// return insudao.nonPaymentStatus(id);
	// }

	public List<InsurancePolicy> ListAllPolicy() {
		List<InsurancePolicy> pack = insudao.getAllPolicies();
		return pack;
	}

	public int createNewPolicy(InsurancePolicy u) {
		return insudao.addPolicy(u);
	}

	public int updateNewPolicy(InsurancePolicy u) {
		return insudao.updateStatus(u);
	}

	public InsurancePolicy getPolicyeById(int id) {
		return insudao.getPolicyById(id);
	}

	public int createNewUser(InsuranceUser u) {
		int p = insudao.addUser(u);
		return p;
	}

	public int updateoldUser(InsuranceUser u) {
		return insudao.updateUser(u);
	}
}
