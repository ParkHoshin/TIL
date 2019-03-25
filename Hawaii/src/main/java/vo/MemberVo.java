package vo;

public class MemberVo {
	
	int member_idx;
	String id,name;
	
	public MemberVo() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberVo(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}
