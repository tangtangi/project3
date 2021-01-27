package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;

public interface MyPageDAO {

	public int modifyPass(MemberVO vo) throws Exception;
	public void e_couponList(GiftVO vo)throws Exception;
	public GiftVO cartGiftSelect(String user_id)throws Exception;
	public GiftVO orderSelect(String user_id)throws Exception;
	public void orderAll_insert(GiftVO vo)throws Exception; 
	
	public void giftselect(String user_id) throws Exception;
}
