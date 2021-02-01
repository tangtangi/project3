package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.BbsVO;
import com.dominos.domain.CouponVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
import com.dominos.domain.OrderGiftVO;
import com.dominos.domain.OrderVO;

public interface MyPageDAO {
//	---------------------------------------------- pizza------------------------------------------------
	public List<OrderVO> pizzaSelect(String user_id) throws Exception;
//	---------------------------------------------- gift------------------------------------------------	
	public int modifyPass(MemberVO vo) throws Exception;
	public void e_couponList(GiftVO vo)throws Exception;
	public GiftVO cartGiftSelect(String user_id)throws Exception;
	public GiftVO orderSelect(String user_id)throws Exception;
	public void orderAll_insert(GiftVO vo)throws Exception; 
	public List<OrderGiftVO> giftSelect(String user_id) throws Exception;
	public List<GiftVO> viewGift(int order_uid) throws Exception;
	public OrderGiftVO viewGift_order(int order_uid) throws Exception;
	public OrderGiftVO couponSelect(String user_id) throws Exception;
	public List<GiftVO> orderList(int order_uid)throws Exception;
	public void order_insert(GiftVO vo)throws Exception;
	public List<CouponVO> couponView(String user_id)throws Exception;
	public String memberSelect(String user_id)throws Exception ;
	public MemberVO member_select(String id)throws Exception ;
	public void question_insert(BbsVO vo)throws Exception ;
	public List<BbsVO> questionList(String id)throws Exception ;
	public BbsVO questionView(int uid)throws Exception;
	public void question_delete(int uid)throws Exception;
	
}
