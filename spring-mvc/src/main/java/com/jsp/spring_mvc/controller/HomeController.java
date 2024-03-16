package com.jsp.spring_mvc.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomeController {
	@RequestMapping("/")
	public RedirectView index(Model model) {
//	public String index(Model model) {
		System.out.println("this is index page");
		model.addAttribute("name", "Shivshankar");
		List<String> names = new ArrayList<String>();
		names.add("Ram");
		names.add("Shyam");
		names.add("Hari");
		names.add("Gopal");
		model.addAttribute("nameList",names);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("help");
//		return "index";
//		return "redirect:/register";
		return redirectView;
	}
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("this is help page");
		ModelAndView modelAndView = new ModelAndView();
		LocalDate date = LocalDate.now();
		modelAndView.addObject("name", "Shivshankar Mishra");
		modelAndView.addObject("date", date);
		modelAndView.setViewName("help");
		return modelAndView;
	}

}
