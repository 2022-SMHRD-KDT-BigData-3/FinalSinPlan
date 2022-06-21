package kr.main.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.Base64Utils;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonIOException;

import kr.board.mapper.Mapper;
import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.Criteria;
import kr.main.entity.SkinAttachVO;
import kr.main.entity.Test_ImgVO;
import kr.main.entity.Vo;
import kr.main.entity.Vo2;

import kr.main.entity.boardListVO;

import kr.main.entity.boardVO;
import kr.main.entity.dairyVO;
import kr.main.entity.imgFileVO;
import kr.main.entity.memberVO;
import kr.main.service.MemberService;
import kr.main.service.MemberServicempl;
import net.coobird.thumbnailator.Thumbnails;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private Mapper mapper;
	@Autowired
	private MemberService memberservice;
	@Autowired
	private MemberServicempl memberservicempl;

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
	    session.setAttribute("nickname", lvo.getNickname());
		session.setAttribute("email", lvo.getEmail());
	    return "main_scan";
	}

	// 메인페이지,상단네비바에서 로그아웃
	@RequestMapping("/logout")
	public String logoutMainGET(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}
	@RequestMapping("/infochange")
	public String change() {
		return "myInfoChange";
	}
	// 내정보수정
	@RequestMapping("/update")
	public String updatemember(@ModelAttribute memberVO vo) {
		mapper.updateMember(vo);
		return "redirect:/main_scan";
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
		return "redirect:/main_board";
	}
	//썸네일 카드 선택
//	@RequestMapping("/boardView")
//	public String boardVIEW() {
//		return "boardView";
//	}
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
	//게시글 등록후 게시글 목록
	@RequestMapping("/rBoardView")
	public String rboardView() {
		return "main_board";
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
	@GetMapping("/main_board")
	public void list(Model model, HttpServletRequest request) {
		System.out.println("게시판 목록");
		model.addAttribute("list",memberservice.getList());
	}
	@GetMapping("/boardlist")
	public @ResponseBody List<boardListVO> boardlist (){
		List<boardListVO> list = mapper.getboardList();	
		return list;
	}
	@GetMapping("/read")
	public void read(Long bno){
		boardVO board = mapper.read(bno);
		System.out.println(board);
	}
	//게시물 조회
	@GetMapping({"/boardView","/modify"})
	public void get(@RequestParam("bno") Long bno, Model model) {
		System.out.println("boardVeiw or modify");
		model.addAttribute("board", memberservice.get(bno));
	}
	//게시글 사진 조회
	@GetMapping("/img_get")
	public void img_get(@RequestParam("bno") Long bno, Model model) {
		System.out.println("img_get");
		model.addAttribute("img_board", memberservice.img_get(bno));
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

	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		System.out.println("remove...."+bno);
		List<BoardAttachVO> attachList = memberservice.getAttachList(bno);
		if(memberservice.remove(bno)) {
			deleteFiles(attachList);
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/main_board";
	}
	@RequestMapping("/result")
	public String result() {
		return "result";
	}
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		System.out.println("테스트목록");
	}
	//Ajax를 이용한 파일 업로드
	@PostMapping("/uploadAjax")
	public String upload(boardVO board, RedirectAttributes rttr, HttpServletRequest request) {
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
    //파일 삭제처리
    private void deleteFiles(List<BoardAttachVO> attachList) {
    	if(attachList == null || attachList.size() == 0) {
    		return;
    	}
    	System.out.println("delete attach files........");
    	attachList.forEach(attach ->{
    		try {
    			Path file = Paths.get("c:\\upload\\"+attach.getUploadPath()+"\\"+attach.getUuid()+"_"+attach.getFileName());
    			Files.deleteIfExists(file);
    			if(Files.probeContentType(file).startsWith("image")) {
    				Path thumbNail = Paths.get("c:\\upload\\"+attach.getUploadPath()+"\\s_"+attach.getUuid()+"_"+attach.getFileName());
    				Files.delete(thumbNail);
    			}
    		}catch(Exception e) {
    			System.out.println("delete file error");
    		}
    	});
    }
	//피부진단페이지 파일 ajax
//	@PostMapping(value="/imgAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//	@ResponseBody
//	public ResponseEntity<List<imgFileVO>> uploadFile(MultipartFile[] uploadFile) {
//
//		List<imgFileVO> list = new ArrayList<imgFileVO>();
//		String uploadFolder = "c:\\upload";
//		String uploadFolderPath = get_Folder();
//		//make folder
//		File uploadPath = new File(uploadFolder, getFolder());
//		if(uploadPath.exists() == false) {
//			uploadPath.mkdirs();
//		}
//		// make yyyy/mm/dd folder
//		for (MultipartFile multipartFile : uploadFile) {
//			imgFileVO attachVO = new imgFileVO();
//			String uploadFileName = multipartFile.getOriginalFilename();
//			//file path
//			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
//			System.out.println("only file name :" +uploadFileName);
//			attachVO.setFileName(uploadFileName);
//			UUID uuid = UUID.randomUUID();
//			uploadFileName = uuid.toString()+"_" +uploadFileName;	
//			File saveFile = new File(uploadPath, uploadFileName);
//			try {		
//				multipartFile.transferTo(saveFile);
//				attachVO.setUuid(uuid.toString());
//				attachVO.setUploadPath(uploadFolderPath);
////				File thumbnailFile = new File(uploadPath,"s_"+uploadFileName);
////				BufferedImage bo_image = ImageIO.read(saveFile);
////					double ratio = 2;
////						int width = (int) (bo_image.getWidth()/ratio);
////						int height = (int) (bo_image.getHeight()/ratio);
////				Thumbnails.of(saveFile).size(width,height).toFile(thumbnailFile);
//				list.add(attachVO);
//				}catch (Exception e) {
//				e.printStackTrace();
//			}
//		}//end for
//		return new ResponseEntity<List<imgFileVO>>(list, HttpStatus.OK);
//	}
	
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

//	@GetMapping(value ="/getImgList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//	@ResponseBody
//	public ResponseEntity<List<SkinAttachVO>> getImgList(Long test_id){
//		System.out.println("getImgList " + test_id);
//		return new ResponseEntity<>(memberservice.getImgList(test_id),HttpStatus.OK);
//	}

	@RequestMapping(value="/form")
	public String form() {
		return "form";
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
	public String remain(dairyVO vo, Model model) {
		vo = mapper.dairyList();
		
		model.addAttribute("idx", vo.getDairy_id());
		model.addAttribute("email", vo.getEmail());
		model.addAttribute("symptom", vo.getSymptom());
		model.addAttribute("wr_date", vo.getWr_date());
		
		return "main_log";
	}

	//피부진단 업로드
	@RequestMapping("/insertImages")
	   public String insertImages(MultipartHttpServletRequest multipartHttpServletRequest, Vo2 vo, HttpServletRequest request) throws IOException {
	      System.out.println("insertImages");
	      List<MultipartFile> img1 = multipartHttpServletRequest.getFiles("uploadfile1");
	      List<MultipartFile> img2 = multipartHttpServletRequest.getFiles("uploadfile2");
	      List<MultipartFile> img3 = multipartHttpServletRequest.getFiles("uploadfile3");

	      
	         vo.setImg1(img1.get(0).getBytes());
	         vo.setImg2(img2.get(0).getBytes());
	         vo.setImg3(img3.get(0).getBytes());
	      
	      
	      HttpSession session = request.getSession();
	      memberVO member = (memberVO)session.getAttribute("member");
	      
	      vo.setEmail(member.getEmail());
	      vo.setSkin_type(vo.getSkin_type());
	     
	      memberservicempl.insertImages(vo);
	      
	      return "redirect:http://localhost:9000/scan";
	  }
	
	//피부진단 첨부파일저장
//		@PostMapping("/insertImages")
//		public String uploaded(boardVO board, RedirectAttributes rttr) {
//			System.out.println("==============");
//			System.out.println("register: " +board);
//			if(board.getAttachList() != null) {
//				board.getAttachList().forEach(attach ->
//				System.out.println(attach));
//			}
//			System.out.println("=============");
//			memberservice.upload(board);
//			rttr.addFlashAttribute("result", board.getBno());
//			return "redirect:/main_board";
//		}
//	@RequestMapping("/selectImage")
//	public void selectImage(Map<String, Object> model ,HttpServletResponse rsponse)throws IOException,SerialException{
//		List<Map<String,Object>> listBoard;
//		try {
//			Map<String, Object>paramMap = new HashMap<String, Object>();
//			listBoard = mapper.selectImage(test_id);
//		}
//	}
	//이미지 저장
//	 @PostMapping("/saveImage")
//	    public String saveImage(@RequestBody Map<String, String> param) {
//	        System.out.println("\n");
//	        System.out.println("=======================================");
//	        System.out.println("[DBApiController] : [saveImage]");
//	        System.out.println("[request keySet] : " + String.valueOf(param.keySet()));
//	        System.out.println("[request idx] : " + String.valueOf(param.get("idx")));
//	        System.out.println("[request idx] : " + String.valueOf(param.get("image")));
//	        System.out.println("=======================================");
//	        System.out.println("\n");
//
//	        // DATA URL 을 바이트로 변환 실시
//	        byte imageArray [] = null;
//	        final String BASE_64_PREFIX = "data:image/png;base64,";
//	        try {
//	            String base64Url = String.valueOf(param.get("image"));
//	            if (base64Url.startsWith(BASE_64_PREFIX)){
//	                imageArray =  Base64.getDecoder().decode(base64Url.substring(BASE_64_PREFIX.length()));
//	                System.out.println("\n");
//	                System.out.println("=======================================");
//	                System.out.println("[DBApiController] : [saveImage]");
//	                System.out.println("[imageArray] : " + new String(imageArray));
//	                System.out.println("=======================================");
//	                System.out.println("\n");
//	            }
//	        }
//	        catch (Exception e){
//	            e.printStackTrace();
//	        }
//
//	        // 모델 객체에 idx 및 byte 지정 실시 [오라클 blob 컬럼은 byte 로 되어있다]
//	        Vo2 vo = new Vo2(param.get("test_id"), imageArray);
//	        if (mapper.insertImages(vo) > 0) {
//	            System.out.println("\n");
//	            System.out.println("=======================================");
//	            System.out.println("[DBApiController] : [saveImage]");
//	            System.out.println("[response] : " + new String("T"));
//	            System.out.println("=======================================");
//	            System.out.println("\n");
//	            JSONObject jsonObject = new JSONObject();
//	            try {
//	                jsonObject.put("state", "T");
//	                jsonObject.put("message", "Success");
//	            } catch (JsonIOException e) {
//	                e.printStackTrace();
//	            }
//	            return jsonObject.toString(); //정상 삽입 완료 시 상태값 반환
//	        } else {
//	            System.out.println("\n");
//	            System.out.println("=======================================");
//	            System.out.println("[DBApiController] : [saveImage]");
//	            System.out.println("[response] : " + new String("F"));
//	            System.out.println("=======================================");
//	            System.out.println("\n");
//	            JSONObject jsonObject = new JSONObject();
//	            try {
//	                jsonObject.put("state", "F");
//	                jsonObject.put("message", "Fail");
//	            } catch (JsonIOException e) {
//	                e.printStackTrace();
//	            }
//	            return jsonObject.toString(); //정상 삽입 완료 시 상태값 반환
//	        }
//	    }
	
	@RequestMapping("/loading")
	public String loading() {
		return "loading";
	}
    
    @RequestMapping(value="result.do")
    public String res(dairyVO vo, Model model) {
    	vo = mapper.dairyView();
    	
    	model.addAttribute("id", vo.getDairy_id());
    	model.addAttribute("path", vo.getPath());
    	model.addAttribute("symptom", vo.getSymptom());
    	model.addAttribute("causation", vo.getCausation());
    	model.addAttribute("care", vo.getCare());
    	model.addAttribute("date", vo.getWr_date());
    	
    	return "result";
    }
    
    @RequestMapping(value="search_date")
    public String search_date() {
    	
    	return "result";
    }
	
	//진단페이지에서 받은 사진 3장
	@PostMapping("/img_upload")
	public void imgupload() {		
	}
} //controller end
	
