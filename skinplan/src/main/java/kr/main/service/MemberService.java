package kr.main.service;

import java.util.List;

import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.CommunityVO;
import kr.main.entity.SkinAttachVO;
import kr.main.entity.Test_ImgVO;
import kr.main.entity.Vo2;
import kr.main.entity.boardVO;
import kr.main.entity.memberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(memberVO member) throws Exception;
	
	//로그인
	public memberVO memberLogin(memberVO member) throws Exception;

	//게시판 업로드
	public void upload(boardVO boardvo);
	public boardVO get(Long bno);
	public boolean modify(boardVO board);
	public boolean remove(Long bno);
	//게시판 목록
	public List<boardVO> getList();
	public void insert(boardVO board);
	public void insertSelectKey(boardVO board);
	
	public void uploadAjax(boardVO boardvo);
	
	public void insert(BoardAttachVO vo);
	
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(Long bno);
	
	//게시물 조회
	public List<BoardAttachVO> getAttachList(Long bno);
	//피부진단사진업로드
	public void fileInsert(SkinAttachVO vo);

	public void img_Upload(Test_ImgVO vo);
	public List<SkinAttachVO> getImgList(Long test_id);
	public void fileInsert(Test_ImgVO vo);
	//게시글 사진 조회
	public BoardAttachVO img_get(Long bno);
	//피부진단 업로드
	public void insertImages(Vo2 vo);

}
