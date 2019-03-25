package vo;

public class FoodVo {
	
	int hf_idx;
	String f_name, f_cont;
	String f_lat, f_lag;
	
	public FoodVo() {
		// TODO Auto-generated constructor stub
	}
	
	

	public FoodVo( String f_name, String f_cont, String f_lat, String f_lag) {
		super();
		
		this.f_name = f_name;
		this.f_cont = f_cont;
		this.f_lat = f_lat;
		this.f_lag = f_lag;
	}



	

	public int getHf_idx() {
		return hf_idx;
	}



	public void setHf_idx(int hf_idx) {
		this.hf_idx = hf_idx;
	}



	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_cont() {
		return f_cont;
	}

	public void setF_cont(String f_cont) {
		this.f_cont = f_cont;
	}

	public String getF_lat() {
		return f_lat;
	}

	public void setF_lat(String f_lat) {
		this.f_lat = f_lat;
	}

	public String getF_lag() {
		return f_lag;
	}

	public void setF_lag(String f_lag) {
		this.f_lag = f_lag;
	}
	

}
