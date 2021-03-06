package com.javalec.bbs_prac.dao;

import java.util.ArrayList;

import com.javalec.bbs_prac.dto.BDto;

public interface IDao {
	public ArrayList<BDto>list();
	// 리턴타입이 void라는 것과 parameter 타입이 int라는 것을 유의
	public void delete(int bId);
	
	public void write(String bUsername, String bTitle, String bContent, String bImage);
	//return type이 BDto객체이다.
	public BDto content_view(int bId);
	
	public void content_count(int bId);//조회수
	
	public BDto update_view(int bId);
	public void update(String bUsername, String bTitle, String bContent, String bImage, int bId);
	
}
