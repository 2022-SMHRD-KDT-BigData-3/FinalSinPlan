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

	public void upload(boardVO boardvo);

	public boardVO get(Long bno);
	public boolean modify(boardVO board);
	public boolean remove(Long bno);
	public List<boardVO> getList();
	
	public void uploadAjax(boardVO boardvo);
	public void insert(BoardAttachVO vo);
	public void insertSelectKey(boardVO board);
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(Long bno);
	
	public void insert(boardVO board);
	public List<BoardAttachVO> getAttachList(Long bno);
	
	

}
