package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User_idVO {

	private String email;
	private String name;
	private String pwd;
	private int tel; //전화번호
	private int skin_id; //피부타입
	
//	@Override
//	public boolean equals(Object o) {
//		if(this == o) return true;
//		if(o == null || getClass() != o.getClass()) return false;
//		User_idVO account = (User_idVO) o;
//		return email.equals(account.email) &&
//				name.equals(account.name) &&
//				pwd.equals(account.pwd);
//	}
	
	
}
