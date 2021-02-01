package com.dominos.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.CartVO;
import com.dominos.domain.CouponVO;
import com.dominos.domain.MemberVO;

@Repository
public class MemberImpl implements MemberDAO{

	private static final String namespace = "com.dominos.mapper.MemberMapper.";
	
	@Inject
	private SqlSession sql;
	
	@Override //회원가입
	public void join(MemberVO vo) throws Exception {
		sql.insert(namespace+"joininsert",vo);
	}

	//회원가입 시 e쿠폰 발행
	@Override
	public void join_coupon(CouponVO coupon) throws Exception {
		sql.insert(namespace+"join_coupon",coupon);
	}

	@Override // 아이디 중복체크
	public int idCheck(String join_id) throws Exception {
		return sql.selectOne(namespace+"idCheck", join_id);
	}

	@Override //로그인
	public int login(MemberVO vo) throws Exception {
		return sql.selectOne(namespace+"login",vo);
	}
	
	@Override //로그인 - 멤버정보 불러오기
	public MemberVO memberselect(String id) throws Exception {
		return sql.selectOne(namespace+"memberselect",id);
	}

	@Override //회원수정 불러오기
	public MemberVO modifyGet(String id) throws Exception {
		return sql.selectOne(namespace+"modifyGet",id);
	}
	
	@Override //회원수정
	public void modifyPost(MemberVO vo) throws Exception {
		sql.update(namespace+"modifyPost",vo);
	}

	@Override //아이디찾기
	public int idFindPost(MemberVO vo) throws Exception {
		return sql.selectOne(namespace+"idFind",vo);
	}

	@Override //아이디 찾기 회원 한명 정보 불러오기
	public MemberVO idselect(MemberVO vo) throws Exception {
		return sql.selectOne(namespace+"idselect",vo);
	}

	@Override //비밀번호 찾기
	public int passFindPost(MemberVO vo) throws Exception {
		return sql.selectOne(namespace+"passFind", vo);
	}

	@Override //비밀번호 찾기 회원 한명 정보 불러오기
	public MemberVO passSelect(MemberVO vo) throws Exception {
		return sql.selectOne(namespace+"passSelect", vo);
	}

	@Override //회원탈퇴
	public void withdraw(String session_id) throws Exception {
		sql.update(namespace+"withdraw", session_id);
	}
	
	/**
	 * 주소 uid 넣기
	 */
	@Override
	public void updateAddr(CartVO cartVO) throws Exception {
		sql.insert(namespace+"updateAddr",cartVO);
	}

	@Override	//주소 uid 불러오기
	public String getAddrUid(String session_id) throws Exception {
		return sql.selectOne(namespace+"getAddrUid",session_id);
	}
	
	
}
