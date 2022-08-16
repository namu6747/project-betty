package com.koreate.betty.domain.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ErrorResult {

	private String code;
	private String message;
	
}
