package com.koreate.betty.domain.board.vo;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class NoticeBoard {
	
	private final String memberId;
	private final String title;
	private final String content;
	private final Timestamp regdate;
	private final int viewcnt;
	private final char showboard;
	
	
	
}
