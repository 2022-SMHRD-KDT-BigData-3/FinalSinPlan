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
	
	public void insert(BoardAttachVO vo);
	//public void insert(boardVO board);
	public void insertSelectKey(boardVO board);
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(Long bno);
	public boardVO read(Long bno);
	public int delete(Long bno);
	
	//게시글 등록
//	public void boardEnroll(boardVO board);
			
	//이미지 데이터 반환 	
	
	
	//게시판 사진 등록
	
	//게시글 등록2
	public void board(boardVO board);
	
	//게시판 리스트
//	@Select("select * from board order by idx desc")
//	public List<boardVO> getAllList();
	
	//게시글 등록(내용) view페이지로 값 받아오기
//	public boardVO boardContent(boardVO boardvo);

	//게시글 이미지 파일 불러오기
	
}

