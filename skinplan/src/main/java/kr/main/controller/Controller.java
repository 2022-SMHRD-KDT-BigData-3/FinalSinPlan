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
import org.springframework.web.bind.annotation.PathVariable;
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
import kr.main.entity.SkinAttachVO;
import kr.main.entity.Test_ImgVO;
import kr.main.entity.boardVO;
import kr.main.entity.imgFileVO;
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
		System.out.println("전달된 데이터 : "+member);

		HttpSession session = request.getSession();
		memberVO lvo = memberservice.memberLogin(member);

		if (lvo == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "login";
		}
		session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우(로그인 성공)
		return "main_scan";
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
	
	 //게시글 이동
	 @RequestMapping("/boardInsert") 
	 public String boardInsert(boardVO boardvo) {
		 mapper.board(boardvo); 
	 return "boardView"; }
	 
	// 게시판 글쓰기 취소
	@RequestMapping("/cancel")
	public String boardcancel() {
		return "main_board";
	}
	//썸네일 카드 선택
	@RequestMapping("/boardView.html")
	public String boardView() {
		return "boardView";
	}
	@RequestMapping("/boardView")
	public String boardVIEW() {
		return "boardView";
	}
	@RequestMapping("/main_board")
	public String main_board() {
		return "main_board";
	}
	//게시판에서 피부일기탭
	@RequestMapping("/main_log.html")
	public String main_log() {
		return "main_log";
	}
	//게시판에서 피부진단탭
	@RequestMapping("/main_scan.html")
	public String main_scan() {
		return "main_scan";
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
	//게시판업로드
	@RequestMapping("/uploadAjax")
	public String uploadAJAX() {
		return "uploadAjax";
	}
	//피부진단탭
	//화장품정보
	@RequestMapping("/cosmetic")
	public String cosmetic() {
		return "cosmetics";
	}
	//화장품카테고리
	@RequestMapping("/cosmeticinfo")
	public String cosmeticinfo() {
		return "cosmeticInfo";
	}
	//게시판 목록
	@GetMapping("/list")
	public void list(Model model) {
		System.out.println("게시판 목록");
		model.addAttribute("list",memberservice.getList());
	}
	//게시물 조회
	@GetMapping("/get")
	public void get(@RequestParam("bno") Long bno, Model model) {
		System.out.println("/get");
		model.addAttribute("board", memberservice.get(bno));
	}
	//수정
	@PostMapping("/modify")
	public String modify(boardVO board, RedirectAttributes rttr) {
		System.out.println("modify:" + board);
		if(memberservice.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/main_board";
	}
//	@RequestMapping("/modify")
//	public String modify() {
//		return "modify";
//	}
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		System.out.println("remove...."+bno);
		if(memberservice.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/main_board";
	}
	//Ajax를 이용한 파일 업로드
	@PostMapping("/upload")
	public String upload(boardVO board, RedirectAttributes rttr) {
		System.out.println("==============");
		System.out.println("register: " +board);
		if(board.getAttachList() != null) {
			board.getAttachList().forEach(attach ->
			System.out.println(attach));
		}
		System.out.println("=============");
		memberservice.upload(board);
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/main_board";
	}
	//이미지 파일 판단
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		}catch(IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	//섬네일 데이터 전송하기
	@GetMapping("/display")
	@ResponseBody
    public ResponseEntity<byte[]> getFile(String fileName) {
        System.out.println("fileName: " + fileName);
        File file = new File("C:\\upload\\" + fileName);
        //File file = new File(fileName);
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

	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileVO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();
		String uploadFolder = "c:\\upload";
		String uploadFolderPath = getFolder();
		
		File uploadPath = new File(uploadFolder, getFolder());
	
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		for (MultipartFile multipartFile : uploadFile) {
			AttachFileVO attachVO = new AttachFileVO();
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			System.out.println("only file name :" +uploadFileName);
			attachVO.setFileName(uploadFileName);
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString()+"_" +uploadFileName;
			
			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				attachVO.setUuid(uuid.toString());
				attachVO.setUploadPath(uploadFolderPath);
				File thumbnailFile = new File(uploadPath,"s_"+uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);
					double ratio = 2;
					int width = (int) (bo_image.getWidth()/ratio);
					int height = (int) (bo_image.getHeight()/ratio);
				Thumbnails.of(saveFile).size(width,height).toFile(thumbnailFile);
			list.add(attachVO);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return new ResponseEntity<List<AttachFileVO>>(list, HttpStatus.OK);
	}
	private String get_Folder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	@GetMapping("/main_scan")
	public void mainscan() {
		System.out.println("upload form");
	}
	@RequestMapping("uploadAction")
	public String uploadAction() {
		return "main_scan";
	}
	//섬네일 데이터 전송하기
	@GetMapping("/Display")
	@ResponseBody
    public ResponseEntity<byte[]> getimgFile(String fileName) {
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
	//피부진단 파일
	@PostMapping(value="/uploadimgAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<imgFileVO>> uploadFile(MultipartFile[] uploadFile) {

		List<imgFileVO> list = new ArrayList<imgFileVO>();
		String uploadFolder = "c:\\upload";
		String uploadFolderPath = get_Folder();
		//make folder
		File uploadPath = new File(uploadFolder, getFolder());
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		// make yyyy/mm/dd folder
		for (MultipartFile multipartFile : uploadFile) {
			imgFileVO attachVO = new imgFileVO();
			String uploadFileName = multipartFile.getOriginalFilename();
			//file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			System.out.println("only file name :" +uploadFileName);
			attachVO.setFileName(uploadFileName);
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString()+"_" +uploadFileName;	
		
			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				attachVO.setUuid(uuid.toString());
				attachVO.setUploadPath(uploadFolderPath);
				File thumbnailFile = new File(uploadPath,"s_"+uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);
					double ratio = 2;
						int width = (int) (bo_image.getWidth()/ratio);
						int height = (int) (bo_image.getHeight()/ratio);
				Thumbnails.of(saveFile).size(width,height).toFile(thumbnailFile);
				list.add(attachVO);
				}catch (Exception e) {
				e.printStackTrace();
			}
		}//end for
		return new ResponseEntity<List<imgFileVO>>(list, HttpStatus.OK);
	}
	
	@GetMapping(value ="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long bno){
		System.out.println("getAttachList " + bno);
		return new ResponseEntity<>(memberservice.getAttachList(bno),HttpStatus.OK);
	}
	//피부진단
	@PostMapping("/uploadAction")
	public String skinsacn(Test_ImgVO vo, RedirectAttributes rttr) {
		System.out.println("==============");
		System.out.println("register: " +vo);
		if(vo.getSkinList() != null) {
			vo.getSkinList().forEach(skin ->
			System.out.println(skin));
		}
		System.out.println("=============");
		memberservice.img_Upload(vo);
		rttr.addFlashAttribute("result", vo.getIno());
		return "redirect:/loading";
	}
	//
	@RequestMapping("/BoardView")
	public String BoardView() {
		return "result";
	}
	//진단페이지 
	@GetMapping(value ="/getImgList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<SkinAttachVO>> getImgList(Long test_id){
		System.out.println("getImgList " + test_id);
		return new ResponseEntity<>(memberservice.getImgList(test_id),HttpStatus.OK);
	}
	//다이어리 -> 목록
	@RequestMapping("/remain")
	public String remain() {
		return "main_log";
	}
} //controller end
	
