package vo;

public class TourVo {
	
	int t_idx;
	String t_name, t_cont;
	String t_lat, t_lag;
	
	public TourVo() {
		// TODO Auto-generated constructor stub
	}
	
	

	public TourVo( String t_name, String t_cont, String t_lat, String t_lag) {
		super();
		
		this.t_name = t_name;
		this.t_cont = t_cont;
		this.t_lat = t_lat;
		this.t_lag = t_lag;
	}



	

	public int getT_idx() {
		return t_idx;
	}



	public void setT_idx(int t_idx) {
		this.t_idx = t_idx;
	}



	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	public String getT_cont() {
		return t_cont;
	}

	public void setT_cont(String t_cont) {
		this.t_cont = t_cont;
	}

	public String getT_lat() {
		return t_lat;
	}

	public void setT_lat(String t_lat) {
		this.t_lat = t_lat;
	}

	public String getT_lag() {
		return t_lag;
	}

	public void setT_lag(String t_lag) {
		this.t_lag = t_lag;
	}

	

}
