package com.sds.icto.mind.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mind.vo.BoardVO;

@Repository
public class BoardDAO {

	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	public void insert(BoardVO vo){
		sqlMapClientTemplate.insert("board.insert", vo);
	}
	
	public void update(BoardVO vo){
		sqlMapClientTemplate.update("board.update", vo);
	}
	
	public void delete(int no){
		sqlMapClientTemplate.delete("board.delete", no);
	}
	
	public ArrayList<BoardVO> list(){
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		list = (ArrayList<BoardVO>) sqlMapClientTemplate.queryForList("board.list");
		return list;
	}
	
	public BoardVO detail(int no){
		BoardVO vo = new BoardVO();
		vo = (BoardVO) sqlMapClientTemplate.queryForObject("board.detail", no);
		return vo;
	}
	
	public void updateViewCnt(int no){
		sqlMapClientTemplate.update("board.updateViewCnt", no);
	}
	
	public ArrayList<BoardVO> search(String keyword){
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		list = (ArrayList<BoardVO>) sqlMapClientTemplate.queryForList("board.search", keyword);
		return list;
	}
	
}
