package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.springmvc.dao.ProductDao;
import com.springmvc.model.Product;

@Controller
public class HomeController {
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String homePage(Model m) {
		List<Product> products = productDao.allProduct();
		m.addAttribute("products", products);
		return "index";
	}
	
	@RequestMapping("/delete/{id}")
	public RedirectView deleteProducts(@PathVariable("id") int id, HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		productDao.deleteProduct(id);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/update/{id}")
	public String updateProducts(@PathVariable("id") int id, Model m) {
		
		Product p = productDao.oneProduct(id);
		m.addAttribute("product", p);
	
		return "update_form";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product Page");
		return "add_product";
	}
	
	@RequestMapping(value="/add-process", method = RequestMethod.POST)
	public RedirectView addProcessPage(@ModelAttribute Product p, HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		productDao.insertProduct(p);
//		m.addAttribute("product", p);
		System.out.println(p);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}

}
