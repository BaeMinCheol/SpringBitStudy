package com.javalec.board.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.board.dto.BoardDto;
import com.javalec.board.service.BoardService;


// ��� ���� ����
// Controller > Service > ServiceImpl > DAO > SQL(XML) > JSP

@Controller
@RequestMapping("noticeboard")
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Resource(name="noticeService")
	private BoardService noticeService;
	
	// �� ��� ����
	@RequestMapping("list")
	public String list(Model model) {
		logger.info("noticeboard_list()");
		
		System.out.println(noticeService.list());
		
		model.addAttribute("list", noticeService.list());
		
		return "notice/list";
	}
	
	// ������ �� ���� ����
	@RequestMapping("contentView")
	
	//	public String contentView(@RequestParam(value="bId") int bId, Model model) {
	public String contentView(int bId, Model model) {

	
		// ��ȸ�� ī��Ʈ �ø���
		noticeService.contentCount(bId);
		//
		model.addAttribute("contentView", noticeService.contentView(bId));
		
		 return "notice/contentView";
	}
	
	// ���� �ۼ��ϴ� �� ȭ������ ����
	@RequestMapping("writeForm")
	public String writeForm() {
		return "notice/writeForm";
	}
	
	// �� ����
	@RequestMapping("write")
	public String write(BoardDto boardDto) {
		
		noticeService.write(boardDto);
		
		return "redirect:list";
		
	}
	
	// ���� �����ϴ� ȭ������ ����
	@RequestMapping("updateForm")
	public String updateForm(int bId, Model model) {
		model.addAttribute("updateForm", noticeService.contentView(bId));
		return "notice/updateForm";
	}
	
	// �� �����ϱ�
	@RequestMapping("update")
	public String update(BoardDto boardDto) {
		
		logger.info(boardDto+"");
		noticeService.update(boardDto);
		return "redirect:list";
	}
	
	
	// �� �����ϱ�
	@RequestMapping("delete")
	public String list(int bId) {
		logger.info("delete()");
		
		noticeService.delete(bId);
		
		return "redirect:list";
	}		
		
	
}
