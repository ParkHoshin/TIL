package dao;

import java.util.List;

import vo.ActVo;

public interface ActDao {
	//해당 섬의 정보를 가져온다
	List selectList(int hw_idx);
	
	ActVo selectOne(int a_idx);

}
