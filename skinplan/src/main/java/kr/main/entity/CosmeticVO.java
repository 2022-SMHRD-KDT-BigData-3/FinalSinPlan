package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CosmeticVO {

	private int cos_id;
	private String cos_name;
	private int price;
	private String brand;
	private int ingredient_id;
	private String cos_img;
}
