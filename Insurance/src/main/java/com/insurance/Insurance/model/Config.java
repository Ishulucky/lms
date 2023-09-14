package com.insurance.Insurance.model;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

@Configuration
public class Config {
	public DataSource ds;

	public Config(DataSource ds) {
		this.ds = ds;
	}

	@Bean
	public JdbcTemplate jdbcTemplate() {

		return new JdbcTemplate(ds);
	}
}
