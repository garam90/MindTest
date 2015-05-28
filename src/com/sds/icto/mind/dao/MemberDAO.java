package com.sds.icto.mind.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mind.vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	public void join(MemberVO vo){
		
		sqlMapClientTemplate.insert("member.insert", vo);
		
	}
	
	public void update(MemberVO vo){
		
		sqlMapClientTemplate.update("member.update", vo);
		
	}
	
	public MemberVO login(MemberVO vo){

		MemberVO member = null;
		System.out.println("vo >> "+ vo);
		member = (MemberVO) sqlMapClientTemplate.queryForObject("member.login", vo);
		
		return member;
		
	}
	
	public void delete(MemberVO vo){
		
		sqlMapClientTemplate.delete("member.delete", vo);
		
	}
	
	public String checkDup(String id){
		
		String dupId = (String) sqlMapClientTemplate.queryForObject("member.checkDup", id);
		return dupId;
		
	}
	
}
