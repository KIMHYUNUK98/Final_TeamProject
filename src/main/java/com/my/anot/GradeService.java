package com.my.anot;

import java.util.List;

import com.my.app.board.GradeVO;

public interface GradeService {
	public int insertGrade(GradeVO vo);
	public int deleteGrade(int id);
	public int updateGrade(GradeVO vo);
	public GradeVO getGrade(int seq);
	public List<GradeVO> getGradeList();
	public List<GradeVO> getMyGrade(String name);
}
