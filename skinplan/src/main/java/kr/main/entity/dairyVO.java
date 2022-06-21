package kr.main.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class dairyVO {
	private int dairy_id;
	private String email;
	private String skin_type;
	private String path;
	private String symptom_id;
	private String symptom;
	private String causation;
	private String care;
	private String wr_date;
}
