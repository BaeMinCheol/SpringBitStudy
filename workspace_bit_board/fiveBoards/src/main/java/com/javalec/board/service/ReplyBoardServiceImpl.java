package com.javalec.board.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javalec.board.dao.IDao;
import com.javalec.board.dto.BDto;

@Service("boardService")
public class ReplyBoardServiceImpl implements ReplyBoardService {
	
	@Autowired
	IDao dao;

	@Override
	public ArrayList<BDto> list(){
		return dao.list();
	}

	@Override
	public void delete(int bId) {
		dao.delete(bId);
	}

	@Override
	public void write(BDto bDto) {
		dao.write(bDto);
	}

	@Override
	public BDto content_view(int bId) {
		return dao.content_view(bId);
	}

	@Override
	public void content_count(int bId) {
		dao.content_count(bId);
	}

	@Override
	public BDto update_view(int bId) {
		return dao.update_view(bId);
	}

	@Override
	public void update(BDto bDto) {
		dao.update(bDto);
	}

	@Override
	public ArrayList<BDto> search(HashMap<String, String> criteria) {
		return dao.search(criteria);
	}

	@Override
	public void reply(BDto bDto) {
		dao.reply(bDto);
	}

	@Override
	public void preReply(BDto bDto) {
		dao.preReply(bDto);		
	}

	@Override
	public String preSearch(String searchWord) {
		return dao.preSearch(searchWord);
	}

	@Override
	public ArrayList<BDto> countTest(String str, int cnt) {
		return dao.countTest(str, 1);
	}
	
	
}
