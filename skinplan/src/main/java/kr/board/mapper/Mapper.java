package kr.board.mapper;

import org.apache.ibatis.annotations.Insert;

import kr.main.entity.CommunityVO;
import kr.main.entity.memberVO;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
	//회원가입
	public void memberJoin(memberVO member);
	
	//로그인
	public memberVO memberLogin(memberVO member);
	
	//게시글 등록
	public void boardWrite(CommunityVO community);

}

