package vo;

public class ActVo {
	
	int a_idx;
	String a_name, a_cont;
	String a_lat, a_lag;
	
	public ActVo() {
		// TODO Auto-generated constructor stub
	}
	
	public ActVo( String a_name, String a_cont, String a_lat, String a_lag) {
		super();
		
		this.a_name = a_name;
		this.a_cont = a_cont;
		this.a_lat = a_lat;
		this.a_lag = a_lag;
	}

	

	public int getIdx() {
		return a_idx;
	}

	public void setIdx(int idx) {
		this.a_idx = idx;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getA_cont() {
		return a_cont;
	}

	public void setA_cont(String a_cont) {
		this.a_cont = a_cont;
	}

	public String getA_lat() {
		return a_lat;
	}

	public void setA_lat(String a_lat) {
		this.a_lat = a_lat;
	}

	public String getA_lag() {
		return a_lag;
	}

	public void setA_lag(String a_lag) {
		this.a_lag = a_lag;
	}

}
