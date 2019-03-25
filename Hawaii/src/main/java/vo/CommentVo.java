package vo;

public class CommentVo {
	
	int comment_idx,member_idx,board_idx;
	String comment_content,name,regdate;
	
	public CommentVo() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public CommentVo(int member_idx, int board_idx, String comment_content, String name) {
		super();
		this.member_idx = member_idx;
		this.board_idx = board_idx;
		this.comment_content = comment_content;
		this.name = name;
	}
	public int getComment_idx() {
		return comment_idx;
	}
	public void setComment_idx(int comment_idx) {
		this.comment_idx = comment_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
