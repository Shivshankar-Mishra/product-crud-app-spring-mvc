package com.jsp.spring_mvc_interceptor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String indexPage() {
		return "index";
		
	}
	
	@RequestMapping("/home")
	public String homePage() {
		return "home";
	}
	
	@RequestMapping("/processSearch")
	public String resultPage(@RequestParam("name") String name, Model m) {
		System.out.println("main method running");
		m.addAttribute("name", name);
		return "result";
	}

}
