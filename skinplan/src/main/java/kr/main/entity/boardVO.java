package kr.main.entity;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class boardVO {
	private Long bno; //일련번호
	private String title;//제목
	private String content;//내용
	private String skintype;//피부타입
	
	private String nickname;
	
	private List<BoardAttachVO> attachList; //업로드한 사진
}
