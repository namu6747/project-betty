package com.koreate.betty.domain.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/books/")
public class BookController {

	@GetMapping
	public String bookDetails() {
		return "book/book-board";
	}
	
	//pathvariable
	@GetMapping("num")
	public String bookList() {
		return "book/book-detail";
	}
	
}