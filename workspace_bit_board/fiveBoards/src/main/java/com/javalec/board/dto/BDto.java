package com.javalec.board.dto;

import java.sql.Date;

public class BDto {

	private int bId;
	private String bUsername;
	private String bTitle;
	private String bContent;
	private Date bDate;
	private int bCount;
	private String bPassword;
	private int bGroup;			//원게시글의 bId
	private int bStep;			//답글이 원글로부터 bStep 만큼 아래에 달린다.
	private int bIndent;		//답글의 들여쓰기 수준
	private int bRef;			//답글이 달릴 게시글의 bId
	private int currbId;		//현재 시퀀스값 확인용
	

	public BDto(int bId, String bUsername, String bTitle, String bContent, Date bDate, int bCount, String bPassword,
			int bGroup, int bStep, int bIndent, int bRef) {
		super();
		this.bId = bId;
		this.bUsername = bUsername;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bCount = bCount;
		this.bPassword = bPassword;
		this.bGroup = bGroup;
		this.bStep = bStep;
		this.bIndent = bIndent;
		this.bRef = bRef;
	}

	public BDto() {
		super();
	}
	
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getbUsername() {
		return bUsername;
	}
	public void setbUsername(String bUsername) {
		this.bUsername = bUsername;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	public int getbCount() {
		return bCount;
	}
	public void setbCount(int bCount) {
		this.bCount = bCount;
	}
	public String getbPassword() {
		return bPassword;
	}
	public void setbPassword(String bPassword) {
		this.bPassword = bPassword;
	}
	
	
	public int getbGroup() {
		return bGroup;
	}
	public void setbGroup(int bGroup) {
		this.bGroup = bGroup;
	}
	public int getbStep() {
		return bStep;
	}
	public void setbStep(int bStep) {
		this.bStep = bStep;
	}
	public int getbIndent() {
		return bIndent;
	}
	public void setbIndent(int bIndent) {
		this.bIndent = bIndent;
	}

	public int getbRef() {
		return bRef;
	}

	public void setbRef(int bRef) {
		this.bRef = bRef;
	}

	public int getCurrbId() {
		return currbId;
	}

	public void setCurrbId(int currbId) {
		this.currbId = currbId;
	}

	@Override
	public String toString() {
		return "BDto [bId=" + bId + ", bUsername=" + bUsername + ", bTitle=" + bTitle + ", bContent=" + bContent
				+ ", bDate=" + bDate + ", bCount=" + bCount + ", bPassword=" + bPassword + ", bGroup=" + bGroup
				+ ", bStep=" + bStep + ", bIndent=" + bIndent + ", bRef=" + bRef + "]";
	}
	
}
