package com.dominos.persistence;

import com.dominos.domain.CartVO;
import com.dominos.domain.CouponVO;
import com.dominos.domain.MemberVO;

public interface MemberDAO {

	public void join(MemberVO vo) throws Exception; 
	public int idCheck(String join_id) throws Exception; 
	public int login(MemberVO vo)throws Exception;
	public MemberVO memberselect(String id)throws Exception;
	public MemberVO modifyGet(String id) throws Exception;
	public void modifyPost(MemberVO vo) throws Exception;
	public int idFindPost(MemberVO vo) throws Exception;
	public MemberVO idselect(MemberVO vo) throws Exception;
	public int passFindPost(MemberVO vo) throws Exception;
	public MemberVO passSelect(MemberVO vo) throws Exception;
	public void withdraw(String session_id) throws Exception;
	public void join_coupon(CouponVO coupon) throws Exception;
	public void updateAddr(CartVO cartVO) throws Exception;
	public String getAddrUid(String session_id) throws Exception;

}
