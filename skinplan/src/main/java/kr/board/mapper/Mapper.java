package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.main.entity.User_idVO;

@org.apache.ibatis.annotations.Mapper

public interface Mapper {
	
//	@Select("select * from user_id where email=#{userId} and userPwd=#{userPwd}")
//	public User_idVO memberLogin(User_idVO vo);
}
