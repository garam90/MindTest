package com.sds.icto.mind.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sds.icto.mind.service.GuestBookService;
import com.sds.icto.mind.vo.GuestBookVO;

@Controller
@RequestMapping("/guestbook")
public class GuestBookController {

	@Autowired
	GuestBookService guestBookService;
	
	@RequestMapping(value={"","/","/list"})
	public String guestbookList(Model model){
		ArrayList<GuestBookVO> list = new ArrayList<>();
		list = guestBookService.list();
		model.addAttribute("list",list);
		return "guestbook/list";
	}
	
	@RequestMapping("/insert")
	public String insert(GuestBookVO vo){
		
		guestBookService.insert(vo);
		return "redirect:/guestbook/";
	}
	
	@RequestMapping(value="/deleteform/{no}", method=RequestMethod.GET)
	public String deleteForm(Model model, @PathVariable int no){
		model.addAttribute("no", no);
		return "guestbook/deleteform";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(@ModelAttribute GuestBookVO vo){
		guestBookService.delete(vo);
		return "redirect:/guestbook/";
	}
}
