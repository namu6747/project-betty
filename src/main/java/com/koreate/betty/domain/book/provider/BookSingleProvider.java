package com.koreate.betty.domain.book.provider;

import static com.koreate.betty.domain.model.TableConst.BOOK_SINGLE_TBL;

import org.apache.ibatis.jdbc.SQL;

import com.koreate.betty.domain.book.vo.Book;

public class BookSingleProvider {

	// 기존 도서 재고 1권 추가
	public String add(String code) {
		return new SQL().INSERT_INTO(BOOK_SINGLE_TBL)
				.INTO_COLUMNS("book_code")
				.INTO_VALUES("#{code}")
				.toString();
	}
	
	// 기존 도서 재고 1권 제거
	public String delete(String code, String num) {
		return new SQL().DELETE_FROM(BOOK_SINGLE_TBL)
				.WHERE("book_code = #{code}").WHERE("num = #{num}")
				.toString();
	}
	
	// 해당 도서 1권 정보
	
	public String oneBook(String ISBN, int num) { // book_single 객체를 넘겨받거나, form 형태를 받음
		
		return "";
	}
}
