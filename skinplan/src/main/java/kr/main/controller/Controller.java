package kr.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.mapper.Mapper;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private Mapper mapper;
	
	@RequestMapping("/main.do")
	public String index() {
		return "index";
	}
	//회원가입
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
}
