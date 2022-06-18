package kr.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import kr.board.mapper.Mapper;
import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.CommunityVO;
import kr.main.entity.SkinAttachVO;
import kr.main.entity.Test_ImgVO;
import kr.main.entity.Vo2;
import kr.main.entity.boardVO;
import kr.main.entity.memberVO;
import lombok.Setter;

@Service
public class MemberServicempl implements MemberService{

	@Setter(onMethod_=@Autowired)
	private Mapper mapper;
	//회원가입
	@Override
	public void memberJoin(memberVO member) throws Exception{
		mapper.memberJoin(member);
	}
	//로그인
	@Override
	public memberVO memberLogin(memberVO member) throws Exception{
		return mapper.memberLogin(member);
	}
	//게시판 등록
	@Transactional
	@Override
	public void upload(boardVO board) {
		System.out.println("upload...."+board);
		mapper.insertSelectKey(board);
		if(board.getAttachList()==null || board.getAttachList().size() <=0) {
			return;
		}
		board.getAttachList().forEach(attach ->{
			attach.setBno(board.getBno());
			mapper.insert(attach);
		});
	}
	@Override
	public List<BoardAttachVO> getAttachList(Long bno) {
		System.out.println("get Attach list by bno" +bno);
		return mapper.findByBno(bno);
	}
	//피부진단 등록
	@Transactional
	@Override
	public void img_Upload(Test_ImgVO vo) {
		System.out.println("img_upload" + vo);
		mapper.testInsert(vo);
		if(vo.getSkinList()==null || vo.getSkinList().size() <= 0) {
			return;
		}
		vo.getSkinList().forEach(skin->{
			skin.setTest_id(vo.getIno());
			mapper.fileInsert(skin);
		});
	}
	//피부진단 사진 업로드
	public void insertImages(Vo2 vo) {
	      mapper.insertImages(vo);
	}

	//첨부파일 삭제
//	@Transactional
//	@Override
//	public boolean remove(Long bno) {
//		System.out.println("remove........."+ bno);
//		mapper.deleteAll(bno);
//		return mapper.delete(bno) == 1;
//	}
	@Override
	public List<SkinAttachVO> getImgList(Long test_id){
		System.out.println("test_img " + test_id);
		return mapper.fileBno(test_id);
	}
	//게시판 목록
	@Override
	public List<boardVO> getList(){
		System.out.println("getList........");
		return mapper.getList();
	}
	//게시물 글 조회
	@Override
	public boardVO get(Long bno) {
		System.out.println("get...."+bno);
		return mapper.read(bno);
	}
	//게시물 사진 조회
	@Override
	public BoardAttachVO img_get(Long bno) {
		System.out.println("img_get : "+ bno);
		return mapper.get_read(bno);
	}
	//게시물 수정
	@Override
	public boolean modify(boardVO board) {
		System.out.println("modify....."+board);
		return mapper.update(board) ==1;
	}
	//게시물 삭제
	@Override
	public boolean remove(Long bno) {
		System.out.println("remove....."+bno);
		return mapper.delete(bno)==1;
	}
	@Override
	public void insert(BoardAttachVO vo) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void delete(String uuid) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<BoardAttachVO> findByBno(Long bno) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void uploadAjax(boardVO boardvo) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void insertSelectKey(boardVO board) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void insert(boardVO board) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void fileInsert(SkinAttachVO vo) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void fileInsert(Test_ImgVO vo) {
		// TODO Auto-generated method stub
		
	}
}
