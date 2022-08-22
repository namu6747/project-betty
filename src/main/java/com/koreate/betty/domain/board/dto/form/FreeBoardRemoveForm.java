package com.koreate.betty.domain.board.dto.form;

import javax.validation.constraints.NotBlank;

import com.koreate.betty.domain.board.vo.FreeBoard;

import lombok.Data;

@Data
public class FreeBoardRemoveForm {
	
	@NotBlank
	private int bno;
	
	public FreeBoard removeFreeBoard() {
		return FreeBoard.builder()
				.bno(bno)
				.build();
	}
	
}
