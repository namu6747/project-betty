package com.koreate.betty.domain.book.provider;

import static com.koreate.betty.domain.model.TableConst.BOOK_SINGLE_TBL;
import static com.koreate.betty.domain.model.TableConst.BOOK_TBL;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

import com.koreate.betty.domain.book.dto.BookSearchForm;
import com.koreate.betty.domain.book.vo.Book;

public class BookProvider {

	// 신규 도서 등록
	public String register(Book book) {
		return new SQL().INSERT_INTO(BOOK_TBL)
				.INTO_VALUES("#{code}, #{title}, #{auth}, #{pub}, #{pubDate}, #{page}, #{genre}, #{img}, #{intro}")
				.toString();
	}

	// 도서 정보 전체 검색
	public String list() {
		return new SQL().SELECT("*").FROM(BOOK_TBL).ORDER_BY("code").toString();
	}

	// 도서 정보 검색(code)
	public String searchByCode(String code) {
		return new SQL().SELECT("*").FROM(BOOK_TBL).WHERE("code LIKE '%#{code}%'").ORDER_BY("code").toString();
	}

	// 도서 정보 검색(title)
	public String searchByTitle(String title) {
		return new SQL().SELECT("*").FROM(BOOK_TBL).WHERE("title LIKE '%#{title}%'").ORDER_BY("code").toString();
	}

	// 도서 정보 검색(auth)
	public String searchByAuth(String auth) {
		return new SQL().SELECT("*").FROM(BOOK_TBL).WHERE("auth LIKE '%#{auth}%'").ORDER_BY("code").toString();
	}

	// 도서 정보 검색(genre)
	public String searchByGenre(String genre) {
		return new SQL().SELECT("*").FROM(BOOK_TBL).WHERE("genre LIKE '%#{genre}%'").ORDER_BY("code").toString();
	}

	// 도서 정보 변경 (변경할 책 코드, 들어갈 정보) // 테스트 완료
	// 코드가 반드시 일치하는 한권이어야 하고, 모든 필수 정보가 들어있어야 합니다
	public String update(@Param("targetCode") String targetCode, @Param("book") Book book) {
		return new SQL().UPDATE(BOOK_TBL).SET("code = #{book.code}").SET("title = #{book.title}")
				.SET("auth = #{book.auth}").SET("pub = #{book.pub}").SET("pub_date = #{book.pubDate}")
				.SET("page = #{book.page}").SET("genre = #{book.genre}").SET("img = #{book.img}")
				.SET("intro = #{book.intro}").WHERE("code = #{targetCode}").toString();
	}

	/*
	 * jBooks : book + bookSingle 조인 이하의 코드는 Join을 사용하여 책의 정보와 책의 권수를 함께 다룸
	 */

	// 도서 전체 검색 // 테스트 완료
	public String jBooksList() {
		return new SQL().SELECT("*").FROM(BOOK_TBL).JOIN(BOOK_SINGLE_TBL).WHERE("code = book_code").ORDER_BY("code")
				.ORDER_BY("num").toString();
	}

//	// 도서 검색(code) -> (같은 이름의 책이 여러개 나올 수 있음)
//	public String jBooksSearchByCode(String code) {
//		return new SQL().SELECT("*")
//				.FROM(BOOK_TBL)
//				.JOIN(BOOK_SINGLE_TBL)
//				.WHERE("code LIKE '%#{code}%'")
//				.WHERE("code = book_code")
//				.ORDER_BY("code")
//				.ORDER_BY("num")
//				.toString();
//	}

	// 도서 검색(title)
	public String jBooksSearch(BookSearchForm form) {

		String search = form.getSearchText();
		String searchOption = form.getSearchOption();
		String rentOption = form.getRentOption();
		String pubDateOption = form.getPubDateOption();

		SQL sql = new SQL();

		sql.SELECT("*").FROM(BOOK_TBL).JOIN(BOOK_SINGLE_TBL);

		switch (searchOption) {
		case "title":
			sql.WHERE("title = " + search);
			break;
		case "content":
			sql.WHERE("content = " + search);
			break;
		case "auth":
			sql.WHERE("auth = " + search);
			break;
		case "pub":
			sql.WHERE("pub = " + search);
			break;
		}

		switch (rentOption) {
		case "all":			
			break;
		case "able":
			sql.WHERE("rental = 'n'");
			break;
		case "rent":
			sql.WHERE("rental = 'y'");
			break;
		case "reserv":
			sql.WHERE("rental = 'r'");
			break;
		}

		if (form.getPubDate() != null) { // 테스트 필요
			Timestamp pubDate = form.getPubDate();
			String date = new SimpleDateFormat("yyyy-MM-dd").format(pubDate);
			if (pubDateOption.equals("after")) {
				sql.WHERE("pub_date >= " + date);
			} else {
				sql.WHERE("pub_date <= " + date);
			}
		}

		String genre = form.getGenre();
		if (genre != null && !genre.equals("")) {
			sql.WHERE("genre = " + genre);
		}

		sql.ORDER_BY("code");

		return sql.toString();
	}

//	// 도서 정보 검색(auth)
//	public String jBooksSearchByAuth(String auth) {
//		return new SQL().SELECT("*")
//				.FROM(BOOK_TBL)
//				.WHERE("auth LIKE '%#{auth}%'")
//				.ORDER_BY("code")
//				.toString();
//	}
//	
//	
//	// 도서 정보 검색(genre)
//	public String jBooksSearchByGenre(String genre) {
//		return new SQL().SELECT("*")
//				.FROM(BOOK_TBL)
//				.WHERE("genre LIKE '%#{genre}%'")
//				.ORDER_BY("code")
//				.toString();
//	}

	// 대여, 예약된 책 목록 검색 // 반드시 변수 값은 y : 대여, r : 예약, n : 없음으로 지정
	public String jBooksRentalList(String stat) {
		return new SQL().SELECT("*").FROM(BOOK_TBL).JOIN(BOOK_SINGLE_TBL).WHERE("code = book_code")
				.WHERE("rental = " + stat).toString();
	}
}
