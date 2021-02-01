package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.BbsVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;

@Repository
public class AdminImpl implements AdminDAO{
	
	private static final String namespace = "com.dominos.mapper.AdminMapper.";
	
	@Inject
	private SqlSession sql;

	public List<MemberVO> a_memberList(MemberVO vo) throws Exception { //회원관리 멤버 리스트
		return sql.selectList(namespace+"a_memberList", vo);
	}

	//문의글 리스트
	@Override
	public List<BbsVO> questionList() throws Exception {
		return sql.selectList(namespace+"questionList");
	}

	//답변달기
	@Override
	public void answerUpdate(BbsVO vo) throws Exception {
		sql.update(namespace+"answerUpdate",vo);
	}

	@Override
	public BbsVO questionView(int uid) throws Exception {
		return sql.selectOne(namespace+"questionView",uid);
	}

	@Override
	public List<GiftVO> OrderList_gift() throws Exception {
		return sql.selectList(namespace+"OrderList_gift");
	}
	
}
