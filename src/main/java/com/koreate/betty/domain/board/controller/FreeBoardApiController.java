package com.koreate.betty.domain.board.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.koreate.betty.domain.board.dto.FreeBoardListDto;
import com.koreate.betty.domain.board.dto.form.FreeBoardForm;
import com.koreate.betty.domain.board.service.FreeBoardService;
import com.koreate.betty.global.error.ErrorResult;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/boards/free/")
public class FreeBoardApiController {
	
	@Autowired
	FreeBoardService freeBoardService;
	
	// 게시글 목록 요청
	// page, cri 정보 받아서 처리해야함
	@GetMapping("list")
	public FreeBoardListDto freeBoardList() {
		return null;
	}
	
	// 게시글 등록 요청
	@PostMapping("new")
	public Object freeBoardNewReq(@RequestBody @Valid FreeBoardForm form, BindingResult bindingResult){
		if(bindingResult.hasErrors()) {
			// form error logic
			log.info("*************************************************");
			log.info("exception occured");
			log.info("form = {}", form);
			log.info("form tag.length = {}", form.getTag().length());
			log.info("form title.length = {}", form.getTitle().length());
			return bindingResult.getAllErrors();
		}
		log.info("form = {}", form);
		
		int result = freeBoardService.write(form);
		
		if(result == 0) {
			// insert error logic
			return new ErrorResult("success", "good");
		}
		return new ErrorResult("success", "good");
		// complete : location 이동
		// redirect:/boards/free/bno
	}

}
