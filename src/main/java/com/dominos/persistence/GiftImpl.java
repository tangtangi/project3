package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.GiftVO;

@Repository
public class GiftImpl implements GiftDAO{

	private static final String namespace = "com.dominos.mapper.GiftMapper.";
	
	@Inject
	private SqlSession sql;

	@Override //gift 페이지 글쓰기
	public void giftWrite(GiftVO vo) throws Exception {
		sql.insert(namespace+"giftWrite",vo);
	}
	
	@Override //gift 리스트 출력
	public List<GiftVO> giftList() throws Exception {
		return sql.selectList(namespace+"gifrList");
	}

	@Override //쿠폰번호 입력 후
	public int e_couponPost(int e_coupon) throws Exception {
		return sql.selectOne(namespace+"e_couponPost",e_coupon);
	}

	@Override //상품권 주문페이지에서 '주문하기' 버튼 누른 후 -쿠폰 db변경
	public void couponUpdate(int e_coupon) throws Exception {
		sql.update(namespace+"couponUpdate", e_coupon);
	}

	
	@Override //상품권 주문페이지에서 '주문하기' 버튼 누른 후 -cart_gift db변경ㄴ
	public void cartUpdate(int e_coupon) throws Exception {
		sql.update(namespace+"cartUpdate",e_coupon);
	}

	// 주문번호 가져오기
	@Override
	public int cartSelect(int e_coupon) throws Exception {
		return sql.selectOne(namespace+"cartSelect",e_coupon);
	}
	
	
	
	
}
