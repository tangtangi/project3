package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.SideVO;

@Repository
public class SideImpl implements SideDAO {

	private static final String namespace = "com.dominos.mapper.SideMapper.";

	@Inject
	private SqlSession sql;
	
	@Override	//사이드 메뉴 인서트.
	public void create(SideVO vo) throws Exception {
		sql.insert(namespace+"insert",vo);
	}

	@Override	//사이드 메뉴 삭제.
	public void delete() throws Exception {
		sql.delete(namespace+"delete");
	}

	@Override	//사이드 메뉴 전체 리스트 불러오기
	public List<SideVO> list(String menu) throws Exception {
		return sql.selectList(namespace+"list",menu);
		
	}
	@Override	//사이드 전체 리스트 불러오기
	public List<SideVO> listAll() throws Exception {
		return sql.selectList(namespace+"listAll");
		
	}

	@Override	//사이드 메뉴 리스트 하나 불러오기
	public SideVO read(String uid) throws Exception {
		return sql.selectOne(namespace+"read",uid);
	}

	@Override
	public SideVO readFromName(String name) throws Exception {
		return sql.selectOne(namespace+"readFromName",name);
	}
	
	
}
