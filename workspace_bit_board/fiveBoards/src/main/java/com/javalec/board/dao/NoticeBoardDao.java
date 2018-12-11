package com.javalec.board.dao;

import java.util.ArrayList;

import com.javalec.board.dto.BoardDto;

public interface NoticeBoardDao {

	public ArrayList<BoardDto> list();
	public void delete(int bId);
	public void write(BoardDto dto);

	public BoardDto contentView(int bId);
	public void contentCount(int bId);

	public BoardDto updateView(int bId);
	public void update(BoardDto dto);
	
	public ArrayList<BoardDto> search(String keyword);
	public void reply(BoardDto dto);
	
}
