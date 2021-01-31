package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.BbsVO;
import com.dominos.domain.PagingVO;

public interface BbsDAO {

	/**	전체 리스트 불러오기
	 *
	 */
	public List<BbsVO> read();

	/**카테고리로 해당카테고리 리스트 불러오기
	 * @param category
	 * @return
	 */
	public List<BbsVO> read(String category);

	/**uid로 게시글 하나 불러와서 BbsVO에 담기
	 * @param uid
	 * @return
	 */
	public BbsVO read(int uid);
	public List<BbsVO> listSearching(PagingVO paging);
	public int listSearchingCount(PagingVO paging);
	public List<BbsVO> listAllSearching(PagingVO paging);
	public int listAllSearchingCount(PagingVO paging);

	/**
	 *	게시글쓰기
	 */
	public void insert(BbsVO vo);
	/**	조회수 늘리기
	 * 
	 */
	public void update(int uid);
	/**	게시글 수정
	 * 
	 */
	public void update(BbsVO vo);
	/**	게시글 삭제
	 * @param uid
	 */
	public void delete(int uid);
	
}
