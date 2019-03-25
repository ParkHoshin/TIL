package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.HawaiiVo;
import vo.TourVo;


public class TourDaoImpl implements TourDao {

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List selectList(int hw_idx) {
		// TODO Auto-generated method stub

		List<HawaiiVo> list = null;

		list = sqlSession.selectList("tour.tour_list", hw_idx);

		return list;
	}

	@Override
	public TourVo selectOne(int t_idx) {
		// TODO Auto-generated method stub

		TourVo vo = null;

		vo = sqlSession.selectOne("tour.tour_one", t_idx);

		return vo;
	}

}
