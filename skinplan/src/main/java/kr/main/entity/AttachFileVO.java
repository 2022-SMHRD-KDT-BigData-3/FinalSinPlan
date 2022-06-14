package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttachFileVO {
	private String uploadPath; //경로
	private String uuid; //uuid
	private String fileName; //파일이름
	private boolean image; //사진 id
	private Long bno;
}
