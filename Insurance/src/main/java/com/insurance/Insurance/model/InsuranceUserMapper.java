package com.insurance.Insurance.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class InsuranceUserMapper implements RowMapper<InsuranceUser> {
	@Override
	public InsuranceUser mapRow(ResultSet rs, int rowNum) throws SQLException {
		InsuranceUser user = new InsuranceUser();
		user.setUserId(rs.getInt("user_id"));
		user.setUserName(rs.getString("user_name"));
		user.setUserCDate(rs.getDate("user_cdate"));
		user.setUserPwd(rs.getString("user_pwd"));
		user.setUserType(rs.getString("user_type"));
		user.setUserStatus(rs.getString("user_status"));
		return user;
	}
}
