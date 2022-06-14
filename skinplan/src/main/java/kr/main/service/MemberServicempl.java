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

	@Autowired
	Mapper mapper;
	
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
	public void uploadAjax(boardVO boardvo) {
		System.out.println("register....."+boardvo);
		mapper.insertSelectKey(boardvo);
		if(boardvo.getAttachList() == null || boardvo.getAttachList().size() <=0) {
			return;
		}
		boardvo.getAttachList().forEach(attach ->{
			attach.setBno(boardvo.getBno());
			mapper.insert(attach);
		});
	}
	@Override
	public List<BoardAttachVO> getAttachList(Long bno){
		System.out.println("get Attach list by bno" +bno);
		return mapper.findByBno(bno);
	}
}
