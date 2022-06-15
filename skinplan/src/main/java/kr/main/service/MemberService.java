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
	
	public void insert(BoardAttachVO vo);
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(Long bno);
	
	public void insertSelectKey(boardVO board);
	public void upload(boardVO boardvo);
	public void insert(boardVO board);	
	
	public List<BoardAttachVO> getAttachList(Long bno);

}
