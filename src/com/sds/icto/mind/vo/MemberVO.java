package com.sds.icto.mind.vo;

public class MemberVO {

	private String id;
	private String password;
	private String name;
	private String grade;
	
	public MemberVO() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name="
				+ name + ", grade=" + grade + "]";
	}

}
