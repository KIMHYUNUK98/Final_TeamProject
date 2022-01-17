package com.my.app.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser",vo);
	}
	
	public int setUser(UserVO vo) {
	      int result = sqlSession.insert("User.setUser", vo);
	      return result;
	}
	
	public List<UserVO> getMemberList() {
	      List<UserVO> result = sqlSession.selectList("User.getMemberList");
	      return result;
	   }
}
