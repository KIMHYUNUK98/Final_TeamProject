package com.my.app.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GradeDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insertGrade(GradeVO vo) {
		int result = sqlSession.insert("Grade.insertGrade", vo);
		return result;
	}
	
	public int updateGrade(GradeVO vo) {
		int result = sqlSession.update("Grade.updateGrade", vo);
		return result;
	}
	
	public int deleteGrade(int seq) {
		int result = sqlSession.delete("Grade.deleteGrade", seq);
		return result;
	}
	
	public GradeVO getGrade(int seq) {
		GradeVO one = sqlSession.selectOne("Grade.getGrade", seq);
		return one;
	}
	
	public List<GradeVO> getGradeList() {
		List<GradeVO> list = sqlSession.selectList("Grade.getGradeList");
		return list;
	}
	
	public List<GradeVO> getMyGrade(String name) {
		List<GradeVO> list = sqlSession.selectList("Grade.getMyGrade", name);
		return list;
	}
	
}
