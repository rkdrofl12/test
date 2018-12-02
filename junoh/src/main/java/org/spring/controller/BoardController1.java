package org.spring.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.spring.domain.BoardVO;
import org.spring.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board/*")
public class BoardController1 {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController1.class);
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/register")
	public void registerGET(BoardVO board, Model model)throws Exception{
		logger.info("register get .........");
		System.out.println("11");
	}
	
	/*@RequestMapping(value = "/register", method=RequestMethod.POST)
	public String registPOST(BoardVO board,Model model)throws Exception{
		logger.info("regist post.....");
		logger.info(board.toString());
		System.out.println("22");
		service.regist(board);
		
		model.addAttribute("result", "success");
		
		return "/board/success";
	}*/
	
}
