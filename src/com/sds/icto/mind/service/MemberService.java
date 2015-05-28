package com.sds.icto.mind.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mind.dao.MemberDAO;
import com.sds.icto.mind.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	MemberDAO memberDAO;
	
	public void join(MemberVO vo) {
		memberDAO.join(vo);
	}

	public void update(MemberVO vo) {
		memberDAO.update(vo);
	}

	public MemberVO login(MemberVO vo) {

		MemberVO member = null;
		member = memberDAO.login(vo);
		return member;

	}

	public void delete(MemberVO vo) {
		
		memberDAO.delete(vo);
		
	}

	public String checkDup(String id) {
		String dupId = memberDAO.checkDup(id);
		return dupId;
	}
}
