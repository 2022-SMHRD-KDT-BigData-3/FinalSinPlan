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
	private String user_name;
	private String gender; //성별
	private String user_tel; //전화번호
	private String join_date; //가입일 
	
}
