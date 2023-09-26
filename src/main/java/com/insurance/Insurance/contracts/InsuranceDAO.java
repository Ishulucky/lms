package com.insurance.Insurance.contracts;

import java.util.List;

import com.insurance.Insurance.model.InsurancePolicy;
import com.insurance.Insurance.model.InsurancePolicySchedule;
import com.insurance.Insurance.model.InsuranceUser;

public interface InsuranceDAO {
	// to get or view all shcedules
	List<InsurancePolicySchedule> getAllSchedule();

	int addUser(InsuranceUser e);

	int updateUser(InsuranceUser e);

	List<InsurancePolicy> getAllPolicies();

	int addPolicy(InsurancePolicy e);

	int updateStatus(InsurancePolicy e);

	InsurancePolicy getPolicyById(int id);

	// List<InsurancePolicySchedule> nonPaymentStatus(int id);
}
