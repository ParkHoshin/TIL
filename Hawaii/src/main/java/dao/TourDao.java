package dao;

import java.util.List;

import vo.TourVo;

public interface TourDao {
	
	List selectList(int hw_idx);
	
	TourVo selectOne(int t_idx);

}
