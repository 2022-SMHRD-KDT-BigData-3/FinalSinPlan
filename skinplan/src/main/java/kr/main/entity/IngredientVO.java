package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class IngredientVO {

	private int ingredient_id; //일련번호
	private String ingredient; //성분명
	private String ingre_con; //설명 
}
