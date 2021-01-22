package com.dominos.persistence;

import com.dominos.domain.MemberVO;

public interface MemberDAO {

	public void join(MemberVO vo) throws Exception; 
	public int login(MemberVO vo)throws Exception;
	public MemberVO memberselect(String id)throws Exception;
	public int modifyPass(MemberVO vo) throws Exception;
	public MemberVO modifyGet(String id) throws Exception;
	public void modifyPost(MemberVO vo) throws Exception;
	public int idFindPost(MemberVO vo) throws Exception;
	public MemberVO idselect(MemberVO vo) throws Exception;
	public int passFindPost(MemberVO vo) throws Exception;
	public MemberVO passSelect(MemberVO vo) throws Exception;
	public void withdraw(String session_id) throws Exception;
	public int idCheck(String id) throws Exception;
}
