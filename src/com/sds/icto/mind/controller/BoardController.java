package com.sds.icto.mind.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sds.icto.mind.service.BoardService;
import com.sds.icto.mind.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value={"","/","/list","/index"})
	public String boardList(Model model){
		ArrayList<BoardVO> list = boardService.list();
		model.addAttribute("list", list);
		return "board/boardlist";
		
	}
	
	@RequestMapping("/detail/{no}")
	public String boardDetail(@PathVariable int no, Model model){
		BoardVO vo = boardService.detail(no);
		model.addAttribute("board", vo);
		return "board/boardDetail";
	}
	
	@RequestMapping("/delete/{no}")
	public String boardDelete(@PathVariable int no){
		boardService.delete(no);
		return "redirect:/board/";
	}
	
	@RequestMapping(value="/insert", method = RequestMethod.GET)
	public String boardInsertForm(){
		return "board/insertBoard";
	}
	
	@RequestMapping(value="/insert", method = RequestMethod.POST)
	public String boardInsert(@ModelAttribute BoardVO vo, HttpServletRequest request){
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String name = (String) session.getAttribute("name");
		vo.setMember_id(id);
		vo.setMember_name(name);
		boardService.insert(vo);
		return "redirect:/board/";
	}
	
	@RequestMapping(value="/update/{no}")
	public String updateForm(@PathVariable int no, Model model){
		BoardVO vo = boardService.detail(no);
		model.addAttribute("board", vo);
		return "board/updateBoard";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String boardUpdate(@ModelAttribute BoardVO vo){
		boardService.update(vo);
		return "redirect:/board/detail/"+vo.getNo();
	}
	
	@RequestMapping("/search")
	public String search(Model model, String keyword){
		ArrayList<BoardVO> list = boardService.search(keyword);
		model.addAttribute("list",list);
		return "board/boardlist";
	}
	
}
