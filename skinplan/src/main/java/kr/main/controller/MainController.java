package kr.main.controller;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

//	@Autowired 
//	private Mapper mapper;
	
	@RequestMapping("/main.do")
	public String index() {
		return "index";
	}

}
