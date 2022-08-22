
package com.koreate.betty.domain.board.vo;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
public class FreeBoard {

	private final int bno;
	private final String memberId;
	private final String tag;
	private final String title;
	private final String content;
	private final Timestamp regdate;
	private final int viewcnt;
	private final String showboard;
	
}
