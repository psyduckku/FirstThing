package com.first.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.first.biz.user.UserService;
import com.first.biz.user.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;	
	
	@Override
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

}
