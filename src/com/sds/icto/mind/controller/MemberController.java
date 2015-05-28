package com.sds.icto.mind.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sds.icto.mind.service.MemberService;
import com.sds.icto.mind.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(@ModelAttribute MemberVO vo){
		
		memberService.join(vo);
		return "redirect:/enter";
	}
	
	@RequestMapping("/login")
	public String login(@ModelAttribute MemberVO vo, HttpServletRequest request){
		
		MemberVO member = null;
		member = memberService.login(vo);

		HttpSession session = request.getSession();

		if(member != null){
			session.setAttribute("id", member.getId());
			session.setAttribute("name", member.getName());
		}else{
			return "redirect:/enter";
		}
		return "redirect:/main";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		session.removeAttribute("name");
		session.invalidate();

		return "redirect:/";
	}
	
	@RequestMapping("/checkDup")
	@ResponseBody
	public HashMap<String, String> checkDup(@RequestParam String id){

		HashMap<String, String> map = new HashMap<String, String>();
		String dupId = memberService.checkDup(id);
		if (dupId != null) {
			map.put("result", "dup");
		}else{
			map.put("result", "use");
		}
		return map; 
	}
	
	// 추가구현
	@RequestMapping(value="update", method = RequestMethod.GET)
	public String updateForm(){
		return "";
	}
	
	@RequestMapping(value="update", method = RequestMethod.POST)
	public String update(){
		return "";
	}
	
}
