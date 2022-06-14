package kr.main.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.imageio.stream.FileCacheImageOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.util.URLEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.board.mapper.Mapper;
import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.CommunityVO;
import kr.main.entity.boardVO;
import kr.main.entity.memberVO;
import kr.main.service.MemberService;
import lombok.Getter;
import net.coobird.thumbnailator.Thumbnailator;
import net.coobird.thumbnailator.Thumbnails;

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

	// 회원가입
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	// 회원가입
	@RequestMapping("/memberjoin")
	public String joinPOST(memberVO member) throws Exception {
		memberservice.memberJoin(member);
		return "login";
	}

	// 로그인
	@RequestMapping("/memberlogin")
	public String loginPOST(HttpServletRequest request, memberVO member, RedirectAttributes rttr) throws Exception {
//		System.out.println("login 메서드 진입");
//		System.out.println("전달된 데이터 : "+member);

		HttpSession session = request.getSession();
		memberVO lvo = memberservice.memberLogin(member);

		if (lvo == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "login";
		}
		session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우(로그인 성공)
		return "main";
	}

	// 메인페이지,상단네비바에서 로그아웃
	@RequestMapping("/logout")
	public String logoutMainGET(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}

	// 내정보수정
	@RequestMapping("/infochange")
	public String infochange() {
		return "myInfoChange";
	}

	// 게시판글쓰기페이지 이동
	@RequestMapping("/boardWrite")
	public String boardWrite() {
		return "boardWrite";
	}
	
	 //게시글 전송 
	 @RequestMapping("/boardInsert") 
	 public String boardInsert(boardVO boardvo) {
		 mapper.board(boardvo); 
	 return "boardView"; }
	
	 //게시글 등록
//	 @PostMapping("/boardInsert") public String board(boardVO board,
//	  RedirectAttributes rttr) { System.out.println("boardInsert......"+board);
//	  memberservice.boardEnroll(board); rttr.addFlashAttribute("enroll_result",
//	  board.getIdx()); return "boardView"; }
		 
	// 게시판 글쓰기 취소
	@RequestMapping("/cancel")
	public String boardcancel() {
		return "main";
	}
<<<<<<< HEAD
	@RequestMapping("/boardView")
	public String boardView_() {
=======

	// 게시판 글쓰기페이지로 이동
	@RequestMapping("/boardView.html")
	public String boardView() {
>>>>>>> branch 'main' of https://github.com/2022-SMHRD-KDT-BigData-3/FinalSkinPlan.git
		return "boardView";
	}

	// 게시판 글쓰기페이지로 이동
//	@RequestMapping("/boardView.html")
//	public String boardView() {
//		return "main";
//	}
	//썸네일 카드 선택
	@RequestMapping("/boardView.html")
	public String board_View() {
		return "boardView";
	}
	//게시글 등록후 메인페이지로 이동(돌아가기) ->메인2페이지 이동
	@RequestMapping("/rBoardView")
	public String rboardView() {
		return "main";
	}
	//게시판 글쓰기 페이지에 이동했을때 
	@GetMapping("/boardWrite")
	public void uploadForm() {
		System.out.println("upload form");
	}
	//Ajax를 이용한 파일 업로드
	@RequestMapping("/uploadAjax")
	public String uploadAjax() {
		System.out.println("upload ajax");
		return "uploadAjax";
	}
	//오늘 날짜의 경로 문자열로 생성
//	private String getFolder() {
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Date date = new Date();
//		String str = sdf.format(date);
//		return str.replace("-", File.separator);
//	}
	//uploadAjax페이지 파일업로드 form태그
	@PostMapping(value="/uploadAjaxAction__", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileVO>> uploadAjaxPost__(MultipartFile[] uploadFile) {
		/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile) {
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;		
			try {
				type = Files.probeContentType(checkfile.toPath());
				System.out.println("MIME TYPE : "+type);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(!type.startsWith("image")) {
				List<AttachFileVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
		}
		String uploadFolder = "c:\\upload";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);
		//String uploadFolderPath = getFolder();
		//make folder
		File uploadPath = new File(uploadFolder, datePath);
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();
		//make yyyy-MM-dd forder
		for (MultipartFile multipartFile : uploadFile) {
			AttachFileVO attachVO = new AttachFileVO();
			String uploadFileName = multipartFile.getOriginalFilename();
			attachVO.setFileName(uploadFileName);
			attachVO.setUploadPath(datePath);
			// IE has file path
			//uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			System.out.println("only file name : " + uploadFileName);
			//UUID uuid = UUID.randomUUID();
			String uuid = UUID.randomUUID().toString();
			attachVO.setUuid(uuid);
			uploadFileName = uuid+ "_" + uploadFileName;
			File saveFile = new File(uploadPath, uploadFileName);	
			try {
				multipartFile.transferTo(saveFile);
				File thumbnailFile = new File(uploadPath,"s_"+uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);
					double ratio = 3;
					int width = (int) (bo_image.getWidth()/ratio);
					int height = (int) (bo_image.getHeight()/ratio);
				Thumbnails.of(saveFile).size(width, height).toFile(thumbnailFile);
		
			}catch (Exception e) {
				e.printStackTrace();
			}
			//add to List
			list.add(attachVO);
		}//end for
		ResponseEntity<List<AttachFileVO>> result = new ResponseEntity<List<AttachFileVO>>(list, HttpStatus.OK);
		return result;
		//return new ResponseEntity<List<AttachFileVO>>(list, HttpStatus.OK);
	}
	//이미지 파일 판단
//	private boolean checkImageType(File file) {
//		try {
//			String contentType = Files.probeContentType(file.toPath());
//			return contentType.startsWith("image");
//		}catch(IOException e) {
//			e.printStackTrace();
//		}
//		return false;
//	}
	//섬네일 데이터 전송하기
	@GetMapping("/display")
    public ResponseEntity<byte[]> getFile(String fileName) {
        System.out.println("fileName: " + fileName);
        File file = new File("C:\\upload\\" + fileName);
        System.out.println("file : " + file);
        ResponseEntity<byte[]> result = null;
        
        try {
            HttpHeaders header = new HttpHeaders();
            header.add("Content-Type",  Files.probeContentType(file.toPath()));
            result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),
                    header, HttpStatus.OK);
        }catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }
    @PostMapping("/deleteFile")
    @ResponseBody
    public ResponseEntity<String> deleteFile(String fileName, String type){
    	System.out.println("deleteFile: "+fileName);
    	File file;
    	try {
    		file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
    		file.delete();
    		if(type.equals("image")) {
    			String largeFileName = file.getAbsolutePath().replace("s_", "");
    			System.out.println("largeFileName :"+largeFileName);
    			file = new File(largeFileName);
    			file.delete();
    		}
    	}catch (UnsupportedEncodingException e) {
    		e.printStackTrace();
    		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    	}
    	return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }
//    @PostMapping("/uploadAjax")
//    public String uploadAjax(boardVO board, RedirectAttributes rttr) {
//    	System.out.println("==============");
//    	System.out.println("register: "+board);
//    	if(board.getAttachList() != null) {
//    		board.getAttachList().forEach(attach -> System.out.println(attach));
//    	}
//    	System.out.println("==========");
//    	return "redirect:/uploadAjax";
//    	}
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	@PostMapping("/uploadAjaxAction")
	@ResponseBody
	public void uploadAjaxPost(MultipartFile[] uploadFile) {
		System.out.println("update ajax post.........");
		String uploadFolder = "c:\\upload";
		//File uploadPath = new File(uploadFolder, getFolder());
		//if(uploadPath.exists() == false) {
			//uploadPath.mkdirs();
		//}
		for (MultipartFile multipartFile : uploadFile) {
			System.out.println("upload file name: " + multipartFile.getOriginalFilename());
			System.out.println("upload file size:" +multipartFile.getSize());
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			System.out.println("only file name :" +uploadFileName);
			//UUID uuid = UUID.randomUUID();
			//uploadFileName = uuid.toString()+"_" +uploadFileName;
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			try {
				multipartFile.transferTo(saveFile);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	@GetMapping(value ="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long bno){
		System.out.println("getAttachList " + bno);
		return new ResponseEntity<>(memberservice.getAttachList(bno),HttpStatus.OK);
	}
	
	
} //controller end
	
