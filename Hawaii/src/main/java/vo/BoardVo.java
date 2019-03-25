package vo;

public class BoardVo {
	
	int board_idx,member_idx,category_idx;
	int ref,step,depth,state;
	String board_title,board_content;
	String regdate;
	
	public BoardVo() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public BoardVo(int member_idx, int category_idx, int ref, int step, int depth, int state, String board_title,
			String board_content) {
		super();
		this.member_idx = member_idx;
		this.category_idx = category_idx;
		this.ref = ref;
		this.step = step;
		this.depth = depth;
		this.state = state;
		this.board_title = board_title;
		this.board_content = board_content;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getCategory_idx() {
		return category_idx;
	}
	public void setCategory_idx(int category_idx) {
		this.category_idx = category_idx;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
