package com.koreate.betty.domain.board.dto.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.lang.Nullable;

import com.koreate.betty.domain.board.vo.SuggestBoard;

public class SuggestBoardForm {
	
	@Nullable
	private int bno;
	
	@NotBlank
	private String memberId;
	
	@Size(max = 50)
	@NotBlank
	private String title;
	
	@NotBlank
	private String content;
	
	
	public SuggestBoard suggestBoard() {
		return SuggestBoard.builder()
				.bno(bno)
				.memberId(memberId)
				.title(title)
				.content(content)
				.build();
				
	} 
	
	
}
