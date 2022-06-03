package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {

	private String email;
	private String name;
	private String pwd;
	private int tel; //전화번호
	private int skin_id; //피부타입
	
}
