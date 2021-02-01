package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dominos.domain.PizzaVO;

@Repository
public class PizzaImpl implements PizzaDAO{
	
	private static final String namespace = "com.dominos.mapper.pizzaMapper.";

	@Inject
	public SqlSession sql;

	@Override	//피자 생성
	public void create(PizzaVO vo) throws Exception{
		sql.insert(namespace+"insert",vo);
	}

	@Transactional
	@Override	//피자 첨부파일 ?? 필요없는듯??
	public void addAttach(String fullName) throws Exception {
		sql.insert(namespace+"addAttach",fullName);
		
	}

	@Override	//피자 전체 리스트 불러오기
	public List<PizzaVO> list() throws Exception {
		return sql.selectList(namespace+"list");
	}

	@Override	//피자 리스트 하나 불러오기
	public PizzaVO read(String uid) throws Exception {
		return sql.selectOne(namespace+"read",uid);
	}

	@Override
	public void update(PizzaVO vo) throws Exception {
		sql.update(namespace+"update",vo);
	}

	@Override
	public void delete(PizzaVO vo) throws Exception {
		sql.delete(namespace+"delete",vo);
	}

	
	
	
}
