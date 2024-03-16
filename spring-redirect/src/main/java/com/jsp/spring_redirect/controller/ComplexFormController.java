package com.jsp.spring_redirect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jsp.spring_redirect.model.Student;

@Controller
public class ComplexFormController {
	@RequestMapping("/form")
	public String complexForm() {
		return "complex_form";
	}
	@RequestMapping(path = "/process", method = RequestMethod.POST)
	public String processForm(@ModelAttribute("student") Student student, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
//			model.addAttribute("error", true);
			return "complex_form";
		}
		System.out.println(student);
//		model.addAttribute("student",student);
//		model.addAttribute("error", false);
		return "success";
	} 

}
