package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.MemberVO;

@Repository
public class AdminImpl implements AdminDAO{
	
	private static final String namespace = "com.dominos.mapper.AdminMapper.";
	
	@Inject
	private SqlSession sql;

	public List<MemberVO> a_memberList(MemberVO vo) throws Exception { //회원관리 멤버 리스트
		return sql.selectList(namespace+"a_memberList", vo);
	}

	
}
