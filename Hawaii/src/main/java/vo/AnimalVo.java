package vo;

public class AnimalVo {
	
	int an_idx;
	String an_cont;

	
	public AnimalVo() {
		// TODO Auto-generated constructor stub
	}
	
	

	public AnimalVo( String an_cont) {
		super();
		
		this.an_cont = an_cont;
	}



	public int getIdx() {
		return an_idx;
	}


	public void setIdx(int idx) {
		this.an_idx = idx;
	}


	public String getAn_cont() {
		return an_cont;
	}


	public void setAn_cont(String an_cont) {
		this.an_cont = an_cont;
	}


	

}
