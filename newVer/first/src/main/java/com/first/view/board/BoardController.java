package com.first.view.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.first.biz.board.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	
	
}
