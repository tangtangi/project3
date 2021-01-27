package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.GiftVO;

@Repository
public class GiftImpl implements GiftDAO{

	private static final String namespace = "com.dominos.mapper.GiftMapper.";
	
	@Inject
	private SqlSession sql;

	@Override //gift 페이지 글쓰기
	public void giftWrite(GiftVO vo) throws Exception {
		sql.insert(namespace+"giftWrite",vo);
	}
	
	@Override //gift 리스트 출력
	public List<GiftVO> giftList() throws Exception {
		return sql.selectList(namespace+"gifrList");
	}
	
	
	
}
