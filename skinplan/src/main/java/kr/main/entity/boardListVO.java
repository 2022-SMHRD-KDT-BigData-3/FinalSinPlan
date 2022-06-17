package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class boardListVO {
	private String title;//제목
	private String skintype;//피부타입
	private String uuid;
	private String uploadPath;
	private String fileName;
	private String fileType;
}
