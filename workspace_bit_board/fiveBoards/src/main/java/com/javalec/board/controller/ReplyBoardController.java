package com.javalec.board.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.board.dto.BDto;
import com.javalec.board.service.ReplyBoardService;


@Controller
@RequestMapping("/replyboard")
public class ReplyBoardController {

	private static final Logger logger = LoggerFactory.getLogger(ReplyBoardController.class);
		
	@Autowired
	private ReplyBoardService boardService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		logger.info("list()");
		model.addAttribute("list", boardService.list());
		
		return "replyboard/list";
	}

	@RequestMapping("/content_view")
	public String contentView(int bId, Model model) {
		logger.info("contentView("+bId+")");
		boardService.content_count(bId);
		model.addAttribute("contentView", boardService.content_view(bId));
		
		return "replyboard/content_view";
	}
	
	@RequestMapping("/delete")
	public String delete(int bId, Model model) {
		logger.info("delete("+bId+")");
		boardService.delete(bId);
		
		return "redirect:list";
	}
	
	@RequestMapping("/write_view")
	public String writeView() {
		logger.info("writeView()");
		
		return "replyboard/write_view";
	}
	
	@RequestMapping("/write")
	public String write(BDto bDto, Model model) {
		logger.info("write()");
		logger.info(bDto.getbUsername());
		
		boardService.write(bDto);
		model.addAttribute("bId", bDto.getbId());
		
		return "redirect:content_view";	//localhost:8080/bbs_prac/content_view
	}
	
	@RequestMapping("/update_view")
	public String updateView(int bId, Model model) {
		logger.info("updateView()");
		model.addAttribute("updateView", boardService.content_view(bId));
		
		return "replyboard/update_view";
	}
	
	@RequestMapping("/update")
	public String update(BDto bDto, Model model) {
		logger.info("update()");
		boardService.update(bDto);
		model.addAttribute("bId", bDto.getbId());
		
		return "redirect:content_view";
	}
	
	@RequestMapping("/reply_view")
	public String replyView(int bId, Model model) {
		logger.info("replyView()");
		model.addAttribute("replyView", boardService.content_view(bId));
		
		return "replyboard/reply_view";
	}
	
	@RequestMapping("/reply")
	public String reply(BDto bDto, Model model) {
		logger.info("reply()");
//		logger.info(bDto.toString());
		boardService.preReply(bDto);
		boardService.reply(bDto);
		logger.info(boardService.content_view(bDto.getCurrbId()).toString());
		
		return "redirect:list";
	}
	
	@RequestMapping("search")
	public String search(String searchOption, String searchWord, Model model) {
		logger.info("search()");
		
		HashMap<String, String> criteria = new HashMap<String, String>();
		criteria.put("searchOption", searchOption);
		criteria.put("searchWord", boardService.preSearch(searchWord));
		ArrayList<BDto> list = boardService.search(criteria);
				
		model.addAttribute("list", list);
		
		return "replyboard/list";
	}
	
	@RequestMapping("countTest")
	public String countTest(String str, Model model) {
		model.addAttribute("list", boardService.countTest(str, 3));

		return "replyboard/list";
	}
	
}
