package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
import com.dominos.domain.OrderVO;

@Repository
public class MyPageImpl implements MyPageDAO{

	private static final String namespace = "com.dominos.mapper.MyPageMapper.";
	
	@Inject
	private SqlSession sql;
	
	//회원수정 비밀번호 확인
	@Override 
	public int modifyPass(MemberVO vo) throws Exception {
		return sql.selectOne(namespace+"modifyPass",vo);
	}
	
	//결제 성공 후 DB내용을 '결제 완료'라고 바꾸기
	@Override 
	public void e_couponList(GiftVO vo) throws Exception {
		sql.update(namespace+"e_couponList", vo);
	}

	//상품권 장바구니 셀렉트
	@Override
	public GiftVO cartGiftSelect(String user_id) throws Exception {
		return sql.selectOne(namespace+ "cartGiftSelect", user_id);
	}
	//user_id의 최근 정보 가져오기
	@Override
	public GiftVO orderSelect(String user_id) throws Exception {
		return sql.selectOne(namespace+ "orderSelect", user_id);
	}

	//orderAll에 인설트
	@Override
	public void orderAll_insert(GiftVO vo) throws Exception {
		sql.insert(namespace+"orderAll_insert", vo);
	}

	//주문 내역 - 상품권
	@Override
	public void giftselect(String user_id) throws Exception {
		
	}
	//주문 내역 - 피자
	@Override
	public List<OrderVO> pizzaSelect(String user_id) throws Exception {
		return sql.selectList(namespace+"pizzaSelect",user_id);
	}

	
	
	
	
}
