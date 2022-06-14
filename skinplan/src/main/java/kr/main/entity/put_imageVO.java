package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class put_imageVO {
	private String imageId; // 사진번호
	private String fileName; //파일이름
	private String uploadPath; //파일경로
	private String uuid; //중복된 이름의 사진제거
}
