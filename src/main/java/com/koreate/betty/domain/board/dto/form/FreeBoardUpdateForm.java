package com.koreate.betty.domain.board.dto.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.koreate.betty.domain.board.vo.FreeBoard;

import lombok.Data;
@Data
public class FreeBoardUpdateForm {
	
		@NotBlank
		private int bno;
		
	// 한글,숫자,영문 상관없이 글자 수 50개까지만 통과
		@Size(max = 50)
		// "", null 모두 검증
		@NotBlank
		private String tag;
		
		@Size(max = 50)
		@NotBlank
		private String title;
		
		@NotBlank
		private String content;

		// image
		
		public FreeBoard updateFreeBoard() {
			return FreeBoard.builder()
					.bno(bno)
					.tag(tag)
					.title(title)
					.content(content)
					.build();
		}
}
