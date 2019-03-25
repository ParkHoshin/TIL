package vo;

public class HawaiiVo {
	
	int hw_idx;
	String land_name,land_cont,hw_lat,hw_lng;
	
	public HawaiiVo() {
		// TODO Auto-generated constructor stub
	}
	
	public HawaiiVo( String land_name, String land_cont, String hw_lat, String hw_lng) {
		super();
		this.land_name = land_name;
		this.land_cont = land_cont;
		this.hw_lat = hw_lat;
		this.hw_lng = hw_lng;
	}
	public int getHw_idx() {
		return hw_idx;
	}
	public void setHw_idx(int hw_idx) {
		this.hw_idx = hw_idx;
	}
	public String getLand_name() {
		return land_name;
	}
	public void setLand_name(String land_name) {
		this.land_name = land_name;
	}
	public String getLand_cont() {
		return land_cont;
	}
	public void setLand_cont(String land_cont) {
		this.land_cont = land_cont;
	}
	public String getHw_lat() {
		return hw_lat;
	}
	public void setHw_lat(String hw_lat) {
		this.hw_lat = hw_lat;
	}
	public String getHw_lng() {
		return hw_lng;
	}
	public void setHw_lng(String hw_lng) {
		this.hw_lng = hw_lng;
	}
	
	
	
	
}
