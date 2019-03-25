package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.HawaiiVo;

public class HawaiiDaoImpl implements HawaiiDao {

	SqlSession sqlSession;
	
	

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List selectList(int hw_idx) {
		// TODO Auto-generated method stub

		List<HawaiiVo> list = null;

		list = sqlSession.selectList("hawaii.hawaii_list", hw_idx);

		return list;
	}

	@Override
	public HawaiiVo hawaiiSelectOne(String rand_name) {
		// TODO Auto-generated method stub

		HawaiiVo vo = null;

		vo = sqlSession.selectOne("hawaii.hawaii_one", rand_name);

		return vo;
	}

}
