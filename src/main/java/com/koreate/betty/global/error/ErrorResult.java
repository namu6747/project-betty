package com.koreate.betty.global.error;

import java.util.List;

import org.springframework.validation.FieldError;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ErrorResult {

	private String code;
	private String message;
	private List<FieldError> bindingError;
	
}
