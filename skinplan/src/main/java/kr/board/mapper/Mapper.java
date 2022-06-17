package kr.board.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.CommunityVO;
import kr.main.entity.SkinAttachVO;
import kr.main.entity.Test_ImgVO;
import kr.main.entity.Vo2;
import kr.main.entity.boardVO;
import kr.main.entity.memberVO;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
	//회원가입
	public void memberJoin(memberVO member);
	
	//로그인
	public memberVO memberLogin(memberVO member);
	//게시판 목록
	public List<boardVO> getList();
	
	public void insert(boardVO board);
	public void insertSelectKey(boardVO board);
	public boardVO read(Long bno);
	public int delete(Long bno);
	public int update(boardVO board);
	//피부진단========================
	public void fileInsert(SkinAttachVO vo);
	public void img_delete(String uuid);
	public List<SkinAttachVO> fileBno(Long bno);

	public void testInsert(Test_ImgVO vo);
	
	public void uploadAjax(boardVO boardvo);	

	public void board(boardVO vo);
	//첨부파일 업로드
	public void insert(BoardAttachVO vo);
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(Long bno);
	
	public List<BoardAttachVO> getAttachList(Long bno);
	public void upload(boardVO boardvo);
	//피부진단파일업로드
	public void fileInsert(Test_ImgVO vo);

	public void saveImage(Map<String, Object> hmap);
	
	public Map<String, Object> getByteImage();
	
	public void insertImages(Vo2 vo);
	
}

