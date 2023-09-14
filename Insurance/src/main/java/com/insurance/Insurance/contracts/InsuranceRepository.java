package com.insurance.Insurance.contracts;

import java.util.List;

import com.insurance.Insurance.model.InsurancePackage;
import com.insurance.Insurance.model.InsuranceUser;

public interface InsuranceRepository {
	List<InsurancePackage> getAll();

	void addUser(InsuranceUser e);
	
	int updateUser(InsuranceUser e);

}
