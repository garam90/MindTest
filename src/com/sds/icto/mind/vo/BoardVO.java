package com.sds.icto.mind.vo;

import java.sql.Date;

public class BoardVO {

	private int no;
	private String title;
	private String content;
	private String member_id;
	private String member_name;
	private int view_cnt;
	private Date reg_date;
	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public int getView_cnt() {
		return view_cnt;
	}
	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", content="
				+ content + ", member_id=" + member_id + ", member_name="
				+ member_name + ", view_cnt=" + view_cnt + ", reg_date="
				+ reg_date + "]";
	}
}
