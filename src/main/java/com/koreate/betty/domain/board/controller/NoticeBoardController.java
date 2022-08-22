package com.koreate.betty.domain.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/boards/notice/")
public class NoticeBoardController {

	@GetMapping
	public String noticeBoardList() {
		return "board/notice/notice-board";
	}
	
	@GetMapping("new")
	public String noticeBoardNew() {
		return "boards/notice/notice-new";
	}
	
	//pathvariable
	@GetMapping("num")
	public String noticeBoardDetail() {
		return "board/notice/notice-detail";
	}

	//pathvariable
	@GetMapping("/num/edit")
	public String noticeBoardEdit() {
		return "board/notice/notice-edit";
	}
	
}
