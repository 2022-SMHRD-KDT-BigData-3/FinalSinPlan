package kr.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.board.mapper.Mapper;
import kr.main.entity.memberVO;
import kr.main.service.MemberService;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private Mapper mapper;
	@Autowired
	private MemberService memberservice;
	
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
	//회원가입
	@RequestMapping("/join")
	public String joinPOST(memberVO member) throws Exception{
		memberservice.memberJoin(member);
		return "login";
	}
	//로그인
	@RequestMapping("/memberlogin")
	public String loginPOST(HttpServletRequest request, memberVO member, RedirectAttributes rttr) throws Exception{
//		System.out.println("login 메서드 진입");
//		System.out.println("전달된 데이터 : "+member);
		
		HttpSession session = request.getSession();
		memberVO lvo = memberservice.memberLogin(member);
		
		if(lvo == null) { 								//일치하지 않는 아이디, 비밀번호 입력 경우
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "login";
		}
		session.setAttribute("member", lvo); 			//일치하는 아이디, 비밀번호 경우(로그인 성공)
		return "main";
	}
	//메인페이지 로그아웃
//	@RequestMapping("/memberlogout")
//	public String logoutMainGET(HttpServletRequest request) throws Exception{
//		
//	}
//	
}
