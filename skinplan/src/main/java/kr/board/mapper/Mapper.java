package kr.board.mapper;

import kr.main.entity.UserVO;

@org.apache.ibatis.annotations.Mapper

public interface Mapper {
	//회원가입
	public void memberJoin(UserVO member);
}
