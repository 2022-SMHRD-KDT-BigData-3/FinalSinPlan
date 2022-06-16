package kr.main.entity;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Test_ImgVO {

	private Long ino; //일련번호
	private String img; //정면
	private String email;
	private String test_date;
	
	private List<SkinAttachVO> skinList; //피부진단 업로드
}
