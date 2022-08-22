package com.koreate.betty.domain.book.provider;

import static com.koreate.betty.domain.model.TableConst.*;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

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
		return new SQL().SELECT("*")
				.FROM(BOOK_TBL)
				.ORDER_BY("code")
				.toString();
	}
	
	// 도서 정보 검색(code)
	public String searchByCode(String code) {
		return new SQL().SELECT("*")
				.FROM(BOOK_TBL)
				.WHERE("code LIKE '%#{code}%'")
				.ORDER_BY("code")
				.toString();
	}
	
	// 도서 정보 검색(title)
	public String searchByTitle(String title) {
		return new SQL().SELECT("*")
				.FROM(BOOK_TBL)
				.WHERE("title LIKE '%#{title}%'")
				.ORDER_BY("code")
				.toString();
	}
	
	// 도서 정보 검색(auth)
	public String searchByAuth(String auth) {
		return new SQL().SELECT("*")
				.FROM(BOOK_TBL)
				.WHERE("auth LIKE '%#{auth}%'")
				.ORDER_BY("code")
				.toString();
	}
	
	// 도서 정보 검색(genre)
	public String searchByGenre(String genre) {
		return new SQL().SELECT("*")
				.FROM(BOOK_TBL)
				.WHERE("genre LIKE '%#{genre}%'")
				.ORDER_BY("code")
				.toString();
	}
	
	// 도서 정보 변경 (변경할 책 코드, 들어갈 정보)		// 테스트 완료
	// 코드가 반드시 일치하는 한권이어야 하고, 모든 필수 정보가 들어있어야 합니다
	public String update(@Param("targetCode") String targetCode, @Param("book") Book book) {
		return new SQL().UPDATE(BOOK_TBL)
				.SET("code = #{book.code}")
				.SET("title = #{book.title}")
				.SET("auth = #{book.auth}")
				.SET("pub = #{book.pub}")
				.SET("pub_date = #{book.pubDate}")
				.SET("page = #{book.page}")
				.SET("genre = #{book.genre}")
				.SET("img = #{book.img}")
				.SET("intro = #{book.intro}")
				.WHERE("code = #{targetCode}")
				.toString();
	}
	
	
	/* 	
	 * jBooks : book + bookSingle 조인 
	 * 이하의 코드는 Join을 사용하여 책의 정보와 책의 권수를 함께 다룸
	*/
	
	// 도서 전체 검색	// 테스트 완료
	public String jBooksList() {
		return new SQL().SELECT("*")
				.FROM(BOOK_TBL)
				.JOIN(BOOK_SINGLE_TBL)
				.WHERE("code = book_code")
				.ORDER_BY("code")
				.ORDER_BY("num")
				.toString();
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
	public String jBooksSearchByType(Book book) { // form이 나와야 빠르게 처리함
		SQL sql = new SQL();
		
		sql.SELECT("*").FROM(BOOK_TBL).JOIN(BOOK_SINGLE_TBL);
		
		if (book.getTitle() != null) {
			// 이런식으로 분기 지정
			// 여차하면 매개변수로 form을 받음
		}

		return ""; 
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
	
	
	// 대여, 예약된 책 목록 검색		// 반드시 변수 값은 y, n으로 지정
	public String jBooksRentalList(String yes) {
		return new SQL().SELECT("*")
				.FROM(BOOK_TBL)
				.JOIN(BOOK_SINGLE_TBL)
				.WHERE("code = book_code")
				.WHERE("rental = "+ yes)
				.toString();
	}	
}
