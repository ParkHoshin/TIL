package dao;

import java.util.List;

import vo.ActVo;

public interface ActDao {
	//�ش� ���� ������ �����´�
	List selectList(int hw_idx);
	
	ActVo selectOne(int a_idx);

}
