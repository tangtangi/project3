package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.GiftVO;

public interface GiftDAO {

	public void giftWrite(GiftVO vo) throws Exception ; 
	public List<GiftVO> giftList() throws Exception ;
	
}
