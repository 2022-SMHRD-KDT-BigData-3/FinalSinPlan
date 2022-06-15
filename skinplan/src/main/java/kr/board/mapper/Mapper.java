package kr.board.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.CommunityVO;
import kr.main.entity.boardVO;
import kr.main.entity.memberVO;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
	//회원가입
	public void memberJoin(memberVO member);
	
	//로그인
	public memberVO memberLogin(memberVO member);

	public List<boardVO> getList();
	public void uploadAjax(boardVO boardvo);	
	public boardVO read(Long bno);
	public int delete(Long bno);
	
	public void board(boardVO vo);
	//첨부파일 업로드
	public void insert(BoardAttachVO vo);
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(Long bno);
	
	public void insert(boardVO board);
	public void insertSelectKey(boardVO board);
	public List<BoardAttachVO> getAttachList(Long bno);
	public void upload(boardVO boardvo);

	
}

