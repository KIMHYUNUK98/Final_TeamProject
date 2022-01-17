package com.my.anot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.app.board.GradeDAO;
import com.my.app.board.GradeVO;

@Service
public class GradeServiceImpl implements GradeService {
	@Autowired
	GradeDAO gradeDAO;
	
	@Override
	public int insertGrade(GradeVO vo) {
		return gradeDAO.insertGrade(vo);
	}
	
	@Override
	public GradeVO getGrade(int seq) {
		return gradeDAO.getGrade(seq);
	}
	
	@Override
	public List<GradeVO> getMyGrade(String name) {
		return gradeDAO.getMyGrade(name);
	}
	
	@Override
	public List<GradeVO> getGradeList() {
		return gradeDAO.getGradeList();
	}

	@Override
	public int deleteGrade(int id) {
		return gradeDAO.deleteGrade(id);
	}

	@Override
	public int updateGrade(GradeVO vo) {
		return gradeDAO.updateGrade(vo);
	}
}
