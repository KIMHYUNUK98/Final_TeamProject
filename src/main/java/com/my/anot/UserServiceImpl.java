package com.my.anot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.app.board.*;

@Service
public class UserServiceImpl {
	
	@Autowired
	UserDAO userDAO;
	
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	public int setUser(UserVO vo) {
		return userDAO.setUser(vo);
	}
}
