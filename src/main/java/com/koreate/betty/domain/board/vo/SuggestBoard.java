package com.koreate.betty.domain.board.vo;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class SuggestBoard {
	
	private final int bno;
	private final String memberId;
	private final String title;
	private final String content;
	private final int origin;
	private final int depth;
	private final int seq;
	private final Timestamp regdate;
	private final int viewcnt;
	private final int recommend;
	private final char showboard;
	
}
