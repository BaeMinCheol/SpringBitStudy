package com.javalec.board.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.javalec.board.dto.BDto;;

public interface IDao {

	public ArrayList<BDto> list();
	public void delete(int bId);
	public void write(BDto bDto);										//파라미터 변경
	public BDto content_view(int bId);
	public void content_count(int bId);
	public BDto update_view(int bId); 									//미작성
	public void update(BDto bDto);										//파라미터 변경
	public String preSearch(String searchWord);							//메서드 추가
	public ArrayList<BDto> search(HashMap<String, String> criteria);	//파라미터 변경
	public void reply(BDto bDto);										//추가
	public void preReply(BDto bDto);									//추가
	public ArrayList<BDto> countTest(String str, int cnt);
	
}
