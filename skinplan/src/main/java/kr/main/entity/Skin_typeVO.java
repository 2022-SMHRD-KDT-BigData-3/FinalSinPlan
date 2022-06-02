package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Skin_typeVO {

	private int skin_id; //일련번호
	private int tpye; //피부타입
	private String skin_con; //피부타입 설명
}
