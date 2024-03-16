package com.jsp.spring_mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsp.spring_mvc.dao.UserDao;
import com.jsp.spring_mvc.model.User;
@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	public int insertData(User u) {
		return userDao.insert(u);
	}

}
