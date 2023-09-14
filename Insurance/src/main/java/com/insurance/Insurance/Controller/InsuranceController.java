package com.insurance.Insurance.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.insurance.Insurance.contracts.InsuranceRepository;
import com.insurance.Insurance.model.InsurancePackage;
import com.insurance.Insurance.model.InsuranceUser;

@RestController
public class InsuranceController {

	@Autowired
	private InsuranceRepository insu;

	@GetMapping(value = "/packages")
	public List<InsurancePackage> packages() {

		List<InsurancePackage> pack = insu.getAll();
		return pack;
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ResponseEntity<Object> createEmployee(@RequestBody InsuranceUser u) {
		insu.addUser(u);
		return new ResponseEntity<>("Employee is created successfully", HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	   public ResponseEntity<Object> updateEmployee(@RequestBody InsuranceUser u) { 
		insu.updateUser(u);
	      return new ResponseEntity<>("Employee is updated successsfully", HttpStatus.OK);
	   }

}
