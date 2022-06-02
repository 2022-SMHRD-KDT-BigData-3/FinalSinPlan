package kr.main.controller;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
public class MainController {

//	@Autowired 
//	private Mapper mapper;
//	
	@RequestMapping("/main.do")
	public String index() {
		return "index";
	}
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/main")
	public String main() {
		return "main";
	}

}
