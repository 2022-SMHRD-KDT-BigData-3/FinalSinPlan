package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class imgFileVO {
	private String uuid; 
	private String uploadPath; //경로
	private String fileName;//파일이름
	private boolean imgae; //이미지
	private Long imgNo;
}
