package com.javalec.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.board.dto.BoardDto;
import com.javalec.board.service.BoardService;

@Controller
@RequestMapping("onelineboard")
public class OnelineBoardController {
	
	@Resource(name="onelineBoardService")
	BoardService onelineBoardService;
	
	@RequestMapping("list")
	public String list(Model model) {
		
		model.addAttribute("list", onelineBoardService.list());
		
		return "onelineboard/list";
	}
	
	@RequestMapping("write")
	public String write(BoardDto boardDto) {
		
		onelineBoardService.write(boardDto);
		
		return "redirect:list";
		
	}
	
	@RequestMapping("update")
	public String update(BoardDto boardDto) {
		
		onelineBoardService.update(boardDto);
		
		return "redirect:list";
	}
	
	@RequestMapping("delete")
	public String delete(int bId) {
		
		onelineBoardService.delete(bId);
		
		return "redirect:list";
	}	
	
}
