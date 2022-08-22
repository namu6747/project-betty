package com.koreate.betty.domain.board.provider;

import org.apache.ibatis.jdbc.SQL;

import com.koreate.betty.domain.board.vo.FreeBoard;

import static com.koreate.betty.domain.model.TableConst.*;

public class FreeBoardProvider {

	// 자유게시판 등록
	public String save(FreeBoard board) {
		return new SQL()
				.INSERT_INTO(FREE_BOARD_TBL)
				.INTO_COLUMNS("member_id", "tag", "title", "content")
				.INTO_VALUES("#{memberId},#{tag},#{title},#{content}")
				.toString();
	}

	// 자유게시판 삭제 요청
	public String freeRemove(FreeBoard board) {
		return new SQL()
				.UPDATE(FREE_BOARD_TBL)
				.SET("showboard = 'n'")
				.WHERE("bno = #{bno}")
				.toString();
	}

	// 자유게시판 수정 요청
	public String freeUpdate(FreeBoard board) {
		return new SQL().UPDATE(FREE_BOARD_TBL)
				.SET("title = #{title}, content = #{content}, tag = #{tag}")
				.WHERE("bno = #{bno}")
				.toString();
	}

	// 자유게시판 목록 요청
	public String freeList(FreeBoard board) {
		return new SQL()
				.SELECT("*")
				.FROM(FREE_BOARD_TBL)
				.ORDER_BY("bno DESC")
				.toString();
	}

}














