package com.koreate.betty.domain.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sign/")
public class SignController {
	
	@GetMapping("in")
	public String login() {
		return "sign/sign-in";
	}
	
	@GetMapping("up")
	public String signUpChoose() {
		return "sign/sign-up-choose";
	}
	
	@GetMapping("up/member")
	public String signUP() {
		return "sign/sign-up-member";
	}
	
	@GetMapping("up/staff")
	public String signUp_staff() {
		return "sign/sign-up-staff";
	}
}