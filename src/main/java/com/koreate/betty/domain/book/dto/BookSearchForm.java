package com.koreate.betty.domain.book.dto;

import java.sql.Timestamp;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.lang.Nullable;

import lombok.Data;

@Data
public class BookSearchForm {

	@NotNull
	private String searchText;
	
	@NotBlank
	private String searchOption;
	
	@NotBlank
	private String rentOption;
	
	@Nullable	// 태그의 입력 형태에 따라 바뀔 수 있음 > provider 변경 필요
	private Timestamp pubDate;
	
	@NotNull
	private String pubDateOption;
	
	@Nullable
	private String genre;
	
}
