package com.javalec.board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javalec.board.dao.NoticeBoardDao;
import com.javalec.board.dto.BoardDto;

@Service("noticeService")
public class NoticeServiceImpl implements BoardService {

	@Autowired
	private NoticeBoardDao ndao;
	
	@Override
	public ArrayList<BoardDto> list() {
		return ndao.list();
	}

	@Override
	public void delete(int bId) {
		ndao.delete(bId);
	}

	@Override
	public void write(BoardDto dto) {
		ndao.write(dto);
	}

	@Override
	public BoardDto contentView(int bId) {
		return ndao.contentView(bId);
	}

	@Override
	public void contentCount(int bId) {
		ndao.contentCount(bId);
	}

	@Override
	public BoardDto updateView(int bId) {
		return ndao.updateView(bId);
	}

	@Override
	public void update(BoardDto dto) {
		ndao.update(dto);
	}

	@Override
	public ArrayList<BoardDto> searchtwo(String select, String search) {
		return null;
	}

	@Override
	public void reply(BoardDto dto) {
		ndao.reply(dto);
	}

	@Override
	public ArrayList<BoardDto> search(String search) {
		return ndao.search(search);
	}

}
