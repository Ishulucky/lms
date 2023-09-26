package com.insurance.Insurance.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.insurance.Insurance.model.InsurancePolicy;
import com.insurance.Insurance.model.InsurancePolicySchedule;
import com.insurance.Insurance.model.InsuranceUser;
import com.insurance.Insurance.repository.InsuranceRepository;

@RestController
public class InsuranceRestController {

	@Autowired
	private InsuranceRepository insu;

	// it is used by using restapi
	@GetMapping("/policy")
	public List<InsurancePolicy> getAllPolicy(Model m) {
		List<InsurancePolicy> p = insu.ListAllPolicy();
		return p;
	}

	@PostMapping(value = "/createpolicy")
	public ResponseEntity<Object> createPolicye(@RequestBody InsurancePolicy u) {
		insu.createNewPolicy(u);
		return new ResponseEntity<>("Policy is created successfully", HttpStatus.CREATED);
	}

	@PutMapping("/updatepolicy")
	public ResponseEntity<Object> updatePolicy(@RequestBody InsurancePolicy p) {
		int result = insu.updateNewPolicy(p);
		if (result > 0) {
			return new ResponseEntity<>("Policy status is updated successfully", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Policy status update failed", HttpStatus.NOT_FOUND);
		}
	}

	// api to view schedule
	@GetMapping("/policySchedule")
	public List<InsurancePolicySchedule> getAllPolicySchedule() {
		return insu.ListAllPolicySchedules();
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ResponseEntity<Object> createEmployee(@RequestBody InsuranceUser u) {
		insu.createNewUser(u);
		return new ResponseEntity<>("Employee is created successfully", HttpStatus.CREATED);
	}

	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	public ResponseEntity<Object> updateEmployee(@RequestBody InsuranceUser u) {
		insu.updateoldUser(u);
		return new ResponseEntity<>("Employee is updated successsfully", HttpStatus.OK);
	}

}
