package com.first.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.first.biz.user.UserService;
import com.first.biz.user.UserVO;
import com.first.biz.user.impl.UserDAO;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/getUser.do", method=RequestMethod.POST)
	public String getUser(UserVO vo, HttpSession session, Model model) {
		System.out.println("getUser실행");
		UserVO loginUser= userService.getUser(vo);
		if(loginUser==null) {
			model.addAttribute("msg", "아이디 또는 비밀번호를 확인해주세요.");
			model.addAttribute("url", "login.jsp");
			return "alert.jsp";
		}else {
			session.setAttribute("loginUser", loginUser);
			model.addAttribute("msg", "로그인 성공");
			model.addAttribute("url", "index.jsp");
			return "alert.jsp";
		}
	}
	
	@RequestMapping("/insertUser.do")
	public String insertUsers(UserVO vo, UserDAO userDAO) {
		userService.insertUser(vo);
		vo.getId();
		return "login.jsp";
	}
}
