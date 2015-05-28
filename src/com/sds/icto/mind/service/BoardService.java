package com.sds.icto.mind.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mind.dao.BoardDAO;
import com.sds.icto.mind.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	BoardDAO boardDAO;
	
	public void insert(BoardVO vo){
		boardDAO.insert(vo);
	}
	
	public void update(BoardVO vo){
		boardDAO.update(vo);
	}
	
	public void delete(int no){
		boardDAO.delete(no);
	}
	
	public ArrayList<BoardVO> list(){
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		list = boardDAO.list();
		return list;
	}
	
	public BoardVO detail(int no){
		BoardVO vo = new BoardVO();
		vo = boardDAO.detail(no);
		if(vo!=null){
			boardDAO.updateViewCnt(no);
		}
		return vo;
	}
	
	public ArrayList<BoardVO> search(String keyword){
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		list = boardDAO.search(keyword);
		return list;
	}
	
}
