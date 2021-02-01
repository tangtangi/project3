package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.BbsVO;
import com.dominos.domain.CouponVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
import com.dominos.domain.OrderGiftVO;
import com.dominos.domain.OrderVO;

@Repository
public class MyPageImpl implements MyPageDAO{

	private static final String namespace = "com.dominos.mapper.MyPageMapper.";
	
	@Inject
	private SqlSession sql;
//	-------------------------피자--------------------------
	//주문 내역 - 피자
		@Override
		public List<OrderVO> pizzaSelect(String user_id) throws Exception {
			return sql.selectList(namespace+"pizzaSelect",user_id);
		}
//	-------------------------상품권--------------------------
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
	public List<OrderGiftVO> giftSelect(String user_id) throws Exception {
		return sql.selectList(namespace+"giftSelect",user_id);
	}

	//gift 주문 상세 페이지 - 주문번호로 구매 내역 조회
	@Override
	public List<GiftVO> viewGift(int order_uid) throws Exception {
		return sql.selectList(namespace+"viewGift",order_uid);
	}

	//gift 주문 상세 페이지 - 주문번호로 order_all select
	@Override
	public OrderGiftVO viewGift_order(int order_uid) throws Exception {
		return sql.selectOne(namespace+"viewGift_order", order_uid);
	}

	//cart_gift 주문 내역뽑기
	@Override
	public OrderGiftVO couponSelect(String user_id) throws Exception {
		return sql.selectOne(namespace+"couponSelect",user_id);
	}

	//주문 번호 같은 리스트 뽑기
	@Override
	public List<GiftVO> orderList(int order_uid) throws Exception {
		return sql.selectList(namespace+"orderList",order_uid);
	}
	
	//coupon 테이블에 인설트
	@Override
	public void order_insert(GiftVO vo) throws Exception {
		sql.insert(namespace+"order_insert", vo);
	}

	//gift 주문 상세 페이지 - 쿠폰 조회하기
	@Override
	public List<CouponVO> couponView(String user_id) throws Exception {
		return sql.selectList(namespace+"couponView",user_id);
	}
	
	//멤버 정보 불러오기
	@Override
	public String memberSelect(String user_id) throws Exception {
		return sql.selectOne(namespace+"memberSelect",user_id);
	}

	//회원 정보 불러오기
	@Override
	public MemberVO member_select(String id) throws Exception {
		return sql.selectOne(namespace+"member_select",id);
	}

	//문의하기 insert
	@Override
	public void question_insert(BbsVO vo) throws Exception {
		sql.insert(namespace+"question_insert",vo);
	}

	//문의글 리스트 뽑기
	@Override
	public List<BbsVO> questionList(String id) throws Exception {
		return sql.selectList(namespace+"questionList",id);
	}
	
	//uid로 문의내용 불러오기
	@Override
	public BbsVO questionView(int uid) throws Exception {
		return sql.selectOne(namespace+"questionView",uid);
	}

	//문의 상세 삭제 
	@Override
	public void question_delete(int uid) throws Exception {
		sql.delete(namespace+"question_delete",uid);
	}

	
	
	
	
}
