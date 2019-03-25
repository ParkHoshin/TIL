package vo;

public class InfoVo {
	
	int in_idx;
	String is_name, is_cont;
	
	public InfoVo() {
		// TODO Auto-generated constructor stub
	}
	
	

	public InfoVo( String is_name, String is_cont) {
		super();
		
		this.is_name = is_name;
		this.is_cont = is_cont;
	}



	

	public int getIn_idx() {
		return in_idx;
	}



	public void setIn_idx(int in_idx) {
		this.in_idx = in_idx;
	}



	public String getIs_name() {
		return is_name;
	}

	public void setIs_name(String is_name) {
		this.is_name = is_name;
	}

	public String getIs_cont() {
		return is_cont;
	}

	public void setIs_cont(String is_cont) {
		this.is_cont = is_cont;
	}

	
	
	
	

}
