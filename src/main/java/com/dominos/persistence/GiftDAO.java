package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.GiftVO;

public interface GiftDAO {

	public void giftWrite(GiftVO vo) throws Exception ; 
	public List<GiftVO> giftList() throws Exception ;
	public int e_couponPost(int e_coupon) throws Exception ;
	public void couponUpdate(int e_coupon) throws Exception ;
	public void cartUpdate(int e_coupon) throws Exception ;
	public int cartSelect(int e_coupon) throws Exception ;
	
}
