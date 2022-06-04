package kr.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.board.mapper.Mapper;
import kr.main.entity.memberVO;

@Service
public class MemberServicempl implements MemberService{

	@Autowired
	Mapper mapper;
	
	//회원가입
	@Override
	public void memberJoin(memberVO member) throws Exception{
		mapper.memberJoin(member);
	}
	
	@Override
	public memberVO memberLogin(memberVO member) throws Exception{
		return mapper.memberLogin(member);
	}
}
