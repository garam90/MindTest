package com.sds.icto.mind.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mind.dao.GuestBookDAO;
import com.sds.icto.mind.vo.GuestBookVO;

@Service
public class GuestBookService {

	@Autowired
	GuestBookDAO guestBookDAO;
	
	public void insert(GuestBookVO vo){
		guestBookDAO.insert(vo);
	}

	public void delete(GuestBookVO vo){
		guestBookDAO.delete(vo);
	}
	
	public ArrayList<GuestBookVO> list(){
		ArrayList<GuestBookVO> list = new ArrayList<GuestBookVO>();
		list = guestBookDAO.list();
		return list;
	}
	
}
