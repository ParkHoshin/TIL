package vo;

public class EnVo {
	
	int en_idx;
	String en_title;

	
	public EnVo() {
		// TODO Auto-generated constructor stub
	}
	
	

	public EnVo( String en_title) {
		super();
		
		this.en_title = en_title;
	}



	


	public int getEn_idx() {
		return en_idx;
	}



	public void setEn_idx(int en_idx) {
		this.en_idx = en_idx;
	}



	public String getEn_title() {
		return en_title;
	}


	public void setEn_title(String en_title) {
		this.en_title = en_title;
	}

	

}
