package com.jsp.spring_redirect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;


@Controller
public class SearchController {
	
	@RequestMapping("/")
	public String home() {
		System.out.println("This is Index/Home page");
		return "index";
	}
	
	@RequestMapping("/search")
	public RedirectView searched(@RequestParam("query") String query) {
		
		String url = "https://www.google.com/search?q="+query;
		RedirectView r = new RedirectView();
		r.setUrl(url);
		
		
		return r;
	}

}
