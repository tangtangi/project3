package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.AddressVO;
import com.dominos.domain.GiftVO;

@Repository
public class AddressImpl implements AddressDAO{

private static final String namespace = "com.dominos.mapper.AddressMapper.";
	
	@Inject
	private SqlSession sql;

	//저장된 주소 불러오기
	@Override
	public List<AddressVO> addSelect(String user_id) throws Exception {
		return sql.selectList(namespace+"addSelect", user_id);
	}
	
	//주소 값 insert
	@Override
	public void add_insert(AddressVO vo) throws Exception {
		sql.insert(namespace+"add_insert",vo);
	}
	@Override
	public List<AddressVO> getAll(String user_id) {
		return sql.selectList(namespace+"getAll",user_id);
	}

	@Override
	public int getCount(AddressVO vo) {
		return sql.selectOne(namespace+"getCount",vo);
	}
	@Override
	public int getCount(String session_id) {	//세션 아이디의 주소 개수
		return sql.selectOne(namespace+"getCountID",session_id);
	}

	@Override
	public void insert(AddressVO vo) {
		sql.insert(namespace+"insert",vo);
		
	}

	@Override
	public void deleteOneAddress(String uid) {
		sql.delete(namespace+"deleteOneAddress",uid);
		
	}

	@Override
	public AddressVO selectOne(String uid) {
		return sql.selectOne(namespace+"selectOne",uid);
	}

	

	
	
}
