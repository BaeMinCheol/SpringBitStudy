package com.javalec.board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javalec.board.dao.OnelineBoardDao;
import com.javalec.board.dto.BoardDto;

@Service("onelineBoardService")
public class OnelineBoardServiceImpl implements BoardService{

	@Autowired
	OnelineBoardDao bdao;
	
	@Override
	public ArrayList<BoardDto> list() {
		return bdao.list();
	}

	@Override
	public void delete(int bId) {
		bdao.delete(bId);
	}

	@Override
	public void write(BoardDto dto) {
		bdao.write(dto);
	}

	@Override
	public BoardDto contentView(int bId) {
		return bdao.contentView(bId);
	}

	@Override
	public void contentCount(int bId) {
		bdao.contentCount(bId);
	}

	@Override
	public BoardDto updateView(int bId) {
		return bdao.updateView(bId);
	}

	@Override
	public void update(BoardDto dto) {
		bdao.update(dto);
	}
	
	@Override
	public void reply(BoardDto dto) {
		bdao.reply(dto);
	}

	@Override
	public ArrayList<BoardDto> search(String search) {
		return null;
	}

	@Override
	public ArrayList<BoardDto> searchtwo(String select, String search) {
		return null;
	}
	
}
