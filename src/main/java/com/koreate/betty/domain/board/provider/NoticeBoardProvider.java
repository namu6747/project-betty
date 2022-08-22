package com.koreate.betty.domain.board.provider;

import static com.koreate.betty.domain.model.TableConst.NOTICE_BOARD_TBL;

import org.apache.ibatis.jdbc.SQL;

import com.koreate.betty.domain.board.vo.NoticeBoard;

public class NoticeBoardProvider {
	
		// 공지사항 등록
		public String noticeRegist(NoticeBoard vo) {
			return new SQL().INSERT_INTO(NOTICE_BOARD_TBL)
					.INTO_COLUMNS("member_id","title","content")
					.INTO_VALUES("#{memberId},#{title},#{content}")
					.toString();
		}
		
		// 공지사항 수정
		public String noticeUpdate(NoticeBoard vo) {
			return new SQL().UPDATE(NOTICE_BOARD_TBL)
					.SET("title = #{title}, content = #{content}")
					.WHERE("bno = #{bno}")
					.toString();
		}
		
		// 공지사항 삭제
		public String noticeRemove(int bno) {
			return new SQL().UPDATE(NOTICE_BOARD_TBL)
					.SET("showboard = 'n'")
					.WHERE("bno = #{bno}")
					.toString();
		}
}
