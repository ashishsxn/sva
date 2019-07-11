package com.ibm;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HelloController {
	
	@Value("${app.test}")
	private String data;
	
	@GetMapping("/world")
	public String hi() {		
		return data;
	}
	
}
