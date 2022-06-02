package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SymptomVO {

	private int symptom_id; //일련번호
	private String symptom; //증상명
	private String main_img; //대표사진
	private String symptom_con; //설명
}
