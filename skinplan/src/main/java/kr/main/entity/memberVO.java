package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class memberVO {

	private String email;
	private String password;
	private String mem_name;
	private String nickname;
	private String gender; //성별
	private String mem_tel; //전화번호
	private String join_date; //가입일 
	
}
