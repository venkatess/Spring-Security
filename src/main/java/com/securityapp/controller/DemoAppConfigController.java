package com.securityapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoAppConfigController {
	@GetMapping("/")
	public String showHome(){
		return "home";
	}
	
	
}
