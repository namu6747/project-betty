package com.koreate.betty.domain.board.provider;

import org.apache.ibatis.jdbc.SQL;

import com.koreate.betty.domain.board.vo.SuggestBoard;

import static com.koreate.betty.domain.model.TableConst.*;

public class SuggestBoardProvider {
	
	// 건의사항 등록
	public String suggestRegist(SuggestBoard vo) {
		return new SQL().INSERT_INTO(SUGGEST_BOARD_TBL)
				.INTO_COLUMNS("member_id","title","content")
				.INTO_VALUES("#{memberId},#{title},#{content}")
				.toString();
	}
	
	// 건의사항 수정
	public String suggestUpdate(SuggestBoard vo) {
		return new SQL().UPDATE(SUGGEST_BOARD_TBL)
				.SET("title = #{title}, content = #{content}")
				.WHERE("bno = #{bno}")
				.toString();
	}
	
	// 건의사항 삭제
	public String suggestRemove(SuggestBoard vo) {
		return new SQL().UPDATE(SUGGEST_BOARD_TBL)
				.SET("showboard = 'n'")
				.WHERE("bno = #{bno}")
				.toString();
	}
	
	// 건의사항 상세보기
	public String suggestDetail(SuggestBoard vo) {
		return new SQL().SELECT("*")
				.FROM(SUGGEST_BOARD_TBL)
				.WHERE("bno = #{bno}")
				.toString();
	}
	
	
}
