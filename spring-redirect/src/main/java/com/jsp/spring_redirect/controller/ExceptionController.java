package com.jsp.spring_redirect.controller;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
@ControllerAdvice
public class ExceptionController {
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(NullPointerException.class )
	public String exceptionHandle1(Model m) {
		m.addAttribute("msg", "Null Pointer Exception Occurred");
		return "null_page";
	}
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value= NumberFormatException.class )
	public String exceptionHandle2(Model m) {
		m.addAttribute("msg", "Number Format Exception Occurred");
		return "null_page";
	}
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value= Exception.class )
	public String exceptionHandle3(Model m) {
		m.addAttribute("msg", "Exception Occurred");
		return "null_page";
	}

}
