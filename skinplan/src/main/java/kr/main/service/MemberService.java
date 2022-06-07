package kr.main.service;

import kr.main.entity.CommunityVO;
import kr.main.entity.memberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(memberVO member) throws Exception;
	
	//로그인
	public memberVO memberLogin(memberVO member) throws Exception;
	
	//게시글등록
	public void boardInsert(CommunityVO community) throws Exception;
}
