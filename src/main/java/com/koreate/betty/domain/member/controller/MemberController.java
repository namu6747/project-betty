package com.koreate.betty.domain.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/members/num/")
public class MemberController {

	@GetMapping
	public String memberDashboard() {
		return "member/member-dashboard";
	}
	
	@GetMapping("edit")
	public String memberEdit() {
		return "member/member-edit";
	}
	
	@GetMapping("rentals")
	public String memberRendal() {
		return "member/member-rental-list";
	}
	
}
