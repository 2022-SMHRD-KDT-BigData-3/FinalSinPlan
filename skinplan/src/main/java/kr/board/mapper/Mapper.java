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

import kr.main.entity.boardListVO;

import kr.main.entity.boardVO;
import kr.main.entity.memberVO;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
	//회원가입
	public void memberJoin(memberVO member);
	
	//로그인
	public memberVO memberLogin(memberVO member);
	//회원정보수정
	public void updateMember(memberVO vo);
	//게시판 목록
	public List<boardVO> getList();	
	public void insert(boardVO board);
	public void insertSelectKey(boardVO board);
	public boardVO read(Long bno);
	public int delete(Long bno);
	public int update(boardVO board);
	//닉네임
	public memberVO nickname(memberVO vo);
	//게시글 사진 조회
	public BoardAttachVO get_read(Long bno);
	//피부진단========================
	public void fileInsert(SkinAttachVO vo);
	public void img_delete(String uuid);
	public List<SkinAttachVO> fileBno(Long bno);

	public void testInsert(Test_ImgVO vo);
	
	public void uploadAjax(boardVO boardvo);	

	public void board(boardVO vo);
	//첨부파일 업로드
	public void insertimg(BoardAttachVO vo);
	public void deleteimg(String uuid);
	public List<BoardAttachVO> findByBnoimg(Long bno);
	//첨부파일 삭제 처리
	public void deleteAll(Long bno); 
	
	public List<BoardAttachVO> getAttachList(Long bno);
	public void upload(boardVO boardvo);
	//피부진단파일업로드

	public void fileInsert(Test_ImgVO vo);


	public void saveImage(Map<String, Object> hmap);
	
	public Map<String, Object> getByteImage();


	//게시글 목록
	public List<boardListVO> getboardList();

	//blob이미지 사진 저장
	public int insertImages(Vo2 vo);
	//진단사진 불러오기
	public Map<String, Object> selectImages(int test_id);
	
	
}

