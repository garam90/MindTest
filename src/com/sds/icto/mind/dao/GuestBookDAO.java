package com.sds.icto.mind.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mind.vo.GuestBookVO;

@Repository
public class GuestBookDAO {

	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	public void insert(GuestBookVO vo){
		sqlMapClientTemplate.insert("guestbook.insert", vo);
	}

	public void delete(GuestBookVO vo){
		sqlMapClientTemplate.delete("guestbook.delete", vo);
	}
	
	public ArrayList<GuestBookVO> list(){
		ArrayList<GuestBookVO> list = new ArrayList<GuestBookVO>();
		
		list = (ArrayList<GuestBookVO>) sqlMapClientTemplate.queryForList("guestbook.list");
		
		return list;
	}
	
}
