package com.jsp.spring_mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;

import com.jsp.spring_mvc.model.User;
import com.jsp.spring_mvc.service.UserService;

@Controller
public class RegisterController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) {
		model.addAttribute("user",user);
		userService.insertData(user);
		System.out.println(user);
		return "success";
	}
}
	
//	@RequestMapping(path = "/processform", method = RequestMethod.POST)
//	public String handleForm(@RequestParam("userName") String userName, @RequestParam("email") String email, @RequestParam("password") String password, Model model) {
//		model.addAttribute("userName",userName);
//		model.addAttribute("email",email);
//		model.addAttribute("password",password);
//		return "success";
//	}
	
//	@RequestMapping("/success")
	
