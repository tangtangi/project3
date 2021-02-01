package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.BbsVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;

public interface AdminDAO {

	public List<MemberVO> a_memberList(MemberVO vo) throws Exception;
	public List<BbsVO> questionList() throws Exception;
	public void answerUpdate(BbsVO vo)throws Exception;
	public BbsVO questionView(int uid)throws Exception;
	public List<GiftVO> OrderList_gift() throws Exception;
}
