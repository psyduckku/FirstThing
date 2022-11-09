package com.first.biz.user;

public interface UserService {

	//회원가입
	void insertUser(UserVO vo);
	
	UserVO getUser(UserVO vo);
}