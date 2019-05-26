package com.myproj.demo.controllers;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {
	
	@ResponseBody
	@RequestMapping(value="/hello", method = GET, produces = "application/json")
	public String hello() {
		return "{\"status\":\"this is backup service\"}";
	}
	
	@ResponseBody
	@RequestMapping(value = "/test", method = GET, produces = "application/json")
	public String getTest() {;
			return "{\"status\":\"this is backup service\"}";
	}

}
