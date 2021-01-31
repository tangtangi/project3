package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.BbsVO;
import com.dominos.domain.PagingVO;

@Repository
public class BbsImpl implements BbsDAO{

	private static final String namespace ="com.dominos.mapper.BbsMapper.";
	
	@Inject
	SqlSession sql;
	
	
	/**	전체 리스트 불러오기
	 *
	 */
	@Override
	public List<BbsVO> read() {
		return sql.selectList(namespace+"read");
	}
	/**	카테고리로 해당카테고리 리스트 불러오기
	 * 
	 */
	@Override
	public List<BbsVO> read(String category) {
		return sql.selectList(namespace+"readCategory",category);
	}
	@Override
	public List<BbsVO> listSearching(PagingVO paging) {
		return sql.selectList(namespace+"listSearching",paging);
	}
	@Override
	public int listSearchingCount(PagingVO paging) {
		return sql.selectOne(namespace+"listSearchingCount",paging);
	}
	@Override
	public List<BbsVO> listAllSearching(PagingVO paging) {
		return sql.selectList(namespace+"listAllSearching",paging);
	}
	@Override
	public int listAllSearchingCount(PagingVO paging) {
		return sql.selectOne(namespace+"listAllSearchingCount",paging);
	}


	/**
	 *	uid로 게시글 하나 불러와서 BbsVO에 담기
	 */
	@Override
	public BbsVO read(int uid) {
		return sql.selectOne(namespace+"readOne",uid);
	}
	/**
	 *	게시글쓰기
	 */
	@Override
	public void insert(BbsVO vo) {
		sql.insert(namespace+"insert", vo);
	}
	@Override
	public void update(int uid) {
		sql.update(namespace+"update",uid);
	}
	@Override
	public void update(BbsVO vo) {
		sql.update(namespace+"updateBBS",vo);
	}
	@Override
	public void delete(int uid) {
		sql.delete(namespace+"delete",uid);
	}
	
}
