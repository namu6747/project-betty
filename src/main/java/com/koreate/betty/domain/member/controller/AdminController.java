package com.koreate.betty.domain.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@GetMapping
	public String adminMain() {
		return "admin/admin-main";
	}
	
	@GetMapping("profit")
	public String adminProfit() {
		return "admin/admin-profit";
	}
	
	@GetMapping("members/")
	public String memberListOfAdmin() {
		System.out.println("CALL");
		return "admin/admin-members";
	}
	
}