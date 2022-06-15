package kr.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import kr.board.mapper.Mapper;
import kr.main.entity.AttachFileVO;
import kr.main.entity.BoardAttachVO;
import kr.main.entity.CommunityVO;
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

}
