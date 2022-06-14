package kr.main.service;

import java.util.List;

import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.CommunityVO;
import kr.main.entity.boardVO;
import kr.main.entity.memberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(memberVO member) throws Exception;
	
	//로그인
	public memberVO memberLogin(memberVO member) throws Exception;

	public void uploadAjax(boardVO boardvo);
	
	public List<BoardAttachVO> getAttachList(Long bno);
	
	//이미지 데이터 변환 
//	public List<AttachFileVO> getAttackList(int imageId);
	
	//이미지 등록
	//public void imageEnroll(AttachFileVO vo);
	
	//게시글 등록
	//	public void boardEnroll(boardVO board);
}
