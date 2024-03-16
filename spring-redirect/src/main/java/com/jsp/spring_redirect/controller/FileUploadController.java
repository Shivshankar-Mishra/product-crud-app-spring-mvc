package com.jsp.spring_redirect.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {
	@RequestMapping("/fileupload")
	public String filePage() {
		return "file_upload";
	}
	
	@RequestMapping(path="/processfile", method = RequestMethod.POST)
	public String processUpload(@RequestParam("fileUpload") CommonsMultipartFile file, HttpSession s, Model m) {
		System.out.println(file.getName());
		System.out.println(file.getContentType());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println(file.getStorageDescription());
		System.out.println(file.getBytes());
		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/")+"WEB-INF"+ File.separator+ "resources" + File.separator +"imgs" + File.separator + file.getOriginalFilename();
		System.out.println(path);
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			m.addAttribute("filename", file.getOriginalFilename());
			fos.close();
			System.out.println("File uploaded");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "fileupload_success";
	}
	@RequestMapping("/user/{id}/{user}")
	public String fileWithData(@PathVariable("id") int id, @PathVariable("user") String user, Model m) {
		m.addAttribute("id", id);
		m.addAttribute("user", user);
		return "success";
	}
	
//	@ExceptionHandler(NullPointerException.class )
//	public String exceptionHandle1(Model m) {
//		m.addAttribute("msg", "Null Pointer Exception Occurred");
//		return "null_page";
//	}
//	@ExceptionHandler(value=NumberFormatException.class )
//	public String exceptionHandle2(Model m) {
//		m.addAttribute("msg", "Number Format Exception Occurred");
//		return "null_page";
//	}
//	@ExceptionHandler(Exception.class )
//	public String exceptionHandle3(Model m) {
//		m.addAttribute("msg", "Exception Occurred");
//		return "null_page";
//	}

}
