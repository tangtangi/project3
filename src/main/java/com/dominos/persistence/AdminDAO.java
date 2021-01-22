package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.MemberVO;

public interface AdminDAO {

	public List<MemberVO> a_memberList(MemberVO vo) throws Exception;
}
