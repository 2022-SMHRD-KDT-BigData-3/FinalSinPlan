package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Vo2 {

	   private byte[] img1;
	   private byte[] img2;
	   private byte[] img3;
	   private String email;
	   private int skin_id;

}
