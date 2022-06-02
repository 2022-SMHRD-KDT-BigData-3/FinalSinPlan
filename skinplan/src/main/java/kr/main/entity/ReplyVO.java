package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {

	private int reply_id; //일련번호
	private int comm_id; //게시물번호
	private String reply; //내용
	private String email; 
}
