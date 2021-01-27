package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.AddressVO;

@Repository
public class AddressImpl implements AddressDAO{

	@Inject
	SqlSession sql;
	
	private static final String namespace="com.dominos.mapper.AddressMapper.";

	@Override
	public List<AddressVO> getAll(String user_id) {
		return sql.selectList(namespace+"getAll",user_id);
	}

	@Override
	public int getCount(AddressVO vo) {
		return sql.selectOne(namespace+"getCount",vo);
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
