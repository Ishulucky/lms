package com.insurance.Insurance.contracts;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.insurance.Insurance.model.InsurancePolicy;
import com.insurance.Insurance.model.InsurancePolicyRowMapper;
import com.insurance.Insurance.model.InsurancePolicySchedule;
import com.insurance.Insurance.model.InsurancePolicyScheduleRowMapper;
import com.insurance.Insurance.model.InsuranceUser;

@Component
public class InsuranceDAOImplement implements InsuranceDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;

	// to view schedule
	@Override
	public List<InsurancePolicySchedule> getAllSchedule() {
		String sql = "SELECT * FROM ish_InsurancePolicySchedule";
		return jdbcTemplate.query(sql, new InsurancePolicyScheduleRowMapper());
	}

	@Override
	public List<InsurancePolicy> getAllPolicies() {
		String sql = "SELECT * FROM InsurancePolicies1 ";
		return jdbcTemplate.query(sql, new InsurancePolicyRowMapper());
	}

	@Override
	public int addPolicy(InsurancePolicy e) {
		return jdbcTemplate.update(
				"INSERT INTO InsurancePolicies1 (iplc_cust_id, iplc_cdate, iplc_sum_assured, iplc_applicable_date, iplc_nom_insured, iplc_insp_id, iplc_yrly_prem_amount, iplc_paymode_count, iplc_expdate, iplc_agnt_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
				e.getIplc_cust_id(), e.getIplc_cdate(), e.getIplc_sum_assured(), e.getIplc_applicable_date(),
				e.getIplc_nom_insured(), e.getIplc_insp_id(), e.getIplc_yrly_prem_amount(), e.getIplc_paymode_count(),
				e.getIplc_expdate(), e.getIplc_agnt_id());
	}

	public int updateStatus(InsurancePolicy e) {
		return jdbcTemplate.update("UPDATE InsurancePolicies1 SET iplc_status = ? WHERE iplc_id = ?",
				e.getIplc_status(), e.getIplc_id());

	}

	@Override
	public InsurancePolicy getPolicyById(int id) {
		String stmt = "SELECT * FROM InsurancePolicies1 WHERE iplc_id = ?";
		return jdbcTemplate.queryForObject(stmt, new InsurancePolicyRowMapper(), new Object[] { id });
	}

	public int addUser(InsuranceUser e) {
		return jdbcTemplate.update(
				"INSERT INTO ish_insurance_Users (user_id, user_name, user_cdate, user_pwd, user_type, user_status) VALUES (?, ?, ?, ?, ?, ?)",
				e.getUserId(), e.getUserName(), e.getUserCDate(), e.getUserPwd(), e.getUserType(), e.getUserStatus());
	}

	public int updateUser(InsuranceUser e) {
		return jdbcTemplate.update("update ish_insurance_Users set user_pwd = ? where user_name = ?", e.getUserPwd(),
				e.getUserName());
	}

	public Integer nonPaymentStatus(int id) {
		String sql = "select count(*) from ish_InsurancePolicySchedule where CURRENT_DATE>=iplc_date and iplc_paid_date is null and iplc_id=?";
		jdbcTemplate.query(sql, new Object[] { id });
	}

}
