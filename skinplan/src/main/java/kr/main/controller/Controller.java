package kr.main.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.board.mapper.Mapper;
import kr.main.entity.CommunityVO;
import kr.main.entity.memberVO;
import kr.main.service.MemberService;
import lombok.Getter;

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
	@RequestMapping("/memberjoin")
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
	//메인페이지,상단네비바에서 로그아웃
	@RequestMapping("/logout")
	public String logoutMainGET(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}
	//내정보수정
	@RequestMapping("/infochange")
	public String infochange() {
		return "myInfoChange";
	}
	//게시판글쓰기페이지 이동
	@RequestMapping("/boardWrite")
	public String boardWrite() {
		return "boardWrite";
	}
	//게시판 글쓰기 등록
	@RequestMapping("/boardInsert")
	public String communityPOST(CommunityVO community, RedirectAttributes rttr) throws Exception{
		memberservice.boardInsert(community);
		rttr.addFlashAttribute("boardWrite", community.getEmail()); // 등록 성공(사용자 이메일)
		return "boardWrite";
	}
	//게시판 글쓰기 취소
	@RequestMapping("/cancel")
	public String boardcancel() {
		return "main";
	}
	//게시판 글쓰기페이지로 이동
	@RequestMapping("/boardView.html")
	public String boardView() {
		return "boardView";
	}
	@RequestMapping("/uploadAjaxAction")
	public void uploadForm() {
		
	}
	//첨부파일 업로드
//	@PostMapping("/uploadAjaxAction")
//	public void uploadAjaxActionPOST(MultipartFile[] uploadFile) {
//		String uploadFolder = "C:\\upload";
//		//날짜 경로
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Date date = new Date();
//		String str = sdf.format(date);
//		String datePath = str.replace("-", File.separator);
//		//폴더 생성
//		File uploadPath = new File(uploadFolder, datePath);
//		if(uploadPath.exists() == false) {
//			uploadPath.mkdirs();
//		}
//		//향상된 for
//		for(MultipartFile multipartFile : uploadFile) {
//			//파일 이름
//			String uploadFileName = multipartFile.getOriginalFilename();
//			//uuid 적용 파일 이름
//			String uuid = UUID.randomUUID().toString();
//			uploadFileName = uuid + "_"+uploadFileName;
//			//파일 위치,파일 이름을 합친 file 객체
//			File saveFile = new File(uploadPath, uploadFileName);
//			//파일 저장
//			try {
//				multipartFile.transferTo(saveFile);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//	
//	}
}
