package com.javalec.bbs_prac.controller;


import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.bbs_prac.dao.IDao;

@Controller
	public class BController {
		
		private static final Logger logger = LoggerFactory.getLogger(BController.class);
		
		@Autowired
		private SqlSession sqlSession;
		
		@RequestMapping("/list")
		public String list(Model model) {
			logger.info("list()");
			
			IDao dao = sqlSession.getMapper(IDao.class);
	//			System.out.println(dao.list());
			model.addAttribute("list", dao.list());
	//			System.out.println(model);
			return "list";
		}
	
	}
