package com.insurance.Insurance.contracts;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.insurance.Insurance.model.InsurancePackage;
import com.insurance.Insurance.model.InsurancePackageMapper;
import com.insurance.Insurance.model.InsuranceUser;

@Repository
public class InsuranceRepositoryImplement implements InsuranceRepository {
	private final JdbcTemplate j;

	@Autowired
	public InsuranceRepositoryImplement(JdbcTemplate j) {
		this.j = j;
	}

	public List<InsurancePackage> getAll() {
		String sql = "SELECT * FROM ish_InsurancePackages";
		return j.query(sql, new InsurancePackageMapper());
	}

	public void addUser(InsuranceUser e) {
		j.update(
				"INSERT INTO ish_insurance_Users (user_id, user_name, user_cdate, user_pwd, user_type, user_status) VALUES (?, ?, ?, ?, ?, ?)",
				e.getUserId(), e.getUserName(), e.getUserCDate(), e.getUserPwd(), e.getUserType(), e.getUserStatus());
	}
	
	public int updateUser(InsuranceUser e) {
		return j.update("update ish_insurance_Users set user_pwd = ? where user_name = ?", e.getUserPwd(), e.getUserName());
	}
	
	

}
