package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.CartVO;
import com.dominos.domain.CouponVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
import com.dominos.domain.OrderGiftVO;
import com.dominos.domain.OrderVO;

@Repository
public class CartImpl implements CartDAO{

	private static final String namespace = "com.dominos.mapper.CartMapper.";
	
	@Inject
	private SqlSession sql;
//	----------------------------pizzaCart-----------------------------------
	@Override	//카트 업데이트
	public void update(CartVO cartVO) throws Exception {
		sql.update(namespace+"update",cartVO);
	}
	@Override	//카트 업데이트
	public void update(CartVO cartVO,String state) throws Exception {
		sql.update(namespace+"updateState",cartVO);
	}
	@Override	//카트 업데이트
	public void updatePlus(CartVO cartVO) throws Exception {
		sql.update(namespace+"updatePlus",cartVO);
	}
	
	@Override	//도우 업데이트
	public void updateDough(CartVO cartVO) throws Exception {
		sql.update(namespace+"updateDough",cartVO);
	}
	@Override	//OrderUid 업데이트
	public void updateOrderUid(CartVO cartVO) throws Exception {
		sql.update(namespace+"updateOrderUid",cartVO);
	}
	@Override	//OrderUid 업데이트 /오버라이드 장바구니 포함 상태 포함.
	public void updateOrderUid(CartVO cartVO,String state) throws Exception {
		sql.update(namespace+"updateOrderUidState",cartVO);
	}
	@Override	//User_id 업데이트
	public void updateUser_id(CartVO cartVO) throws Exception {
		sql.update(namespace+"updateUser_id",cartVO);
	}

	@Override	//카트 인서트
	public void insert(CartVO cartVO) throws Exception {
		sql.insert(namespace+"insert",cartVO);
		
	}
	@Override	//OrderAll 에  인서트하기
	public void insert(OrderVO orderVO,String text) throws Exception {
		sql.insert(namespace+"insertOrderAll",orderVO);
		
	}
	@Override	//카트 인서트
	public void insertJuice(CartVO cartVO) throws Exception {
		sql.insert(namespace+"insertJuice",cartVO);
		
	}

	@Override	//토핑 이름으로 카트에 있는지 없는지 판별.-> 없으면 인서트, 없으면 감소
	public int check(CartVO cartVO) throws Exception {
		return sql.selectOne(namespace+"check", cartVO);
	}
	@Override	//토핑 이름으로 카트에 있는지 없는지 판별.-> 없으면 인서트, 없으면 감소
	public int checkJuice(CartVO cartVO) throws Exception {
		return sql.selectOne(namespace+"checkJuice", cartVO);
	}

	@Override
	public int checkFromId(String user_id) throws Exception {
		return sql.selectOne(namespace+"checkFromId", user_id);
	}
	
	@Override
	public int cartCnt(String session_id) throws Exception {
		return sql.selectOne(namespace+"cartCnt", session_id);
	}
	@Override //피자인 것 중에서 가장 큰 카트아이디 값 찾기
	public int getCountDough(CartVO cartVO) throws Exception {
		return sql.selectOne(namespace+"getCountDough", cartVO);
	}
	
	
	@Override
	public String countPizza(String session_id) throws Exception {
		return sql.selectOne(namespace+"countPizza", session_id);
	}
	@Override
	public String countJuice(String session_id) throws Exception {
		return sql.selectOne(namespace+"countJuice", session_id);
	}
	@Override
	public String countSideDish(String session_id) throws Exception {
		return sql.selectOne(namespace+"countSideDish", session_id);
	}

	@Override //피자 수량 토탈
	public String sumPizza(CartVO cartVO) throws Exception {
		return sql.selectOne(namespace+"sumPizza", cartVO);
	}
	@Override //음료 수량 토탈
	public String sumJuice(CartVO cartVO) throws Exception {
		return sql.selectOne(namespace+"sumJuice", cartVO);
	}
	@Override //사이드 수량 토탈
	public String sumSide(CartVO cartVO) throws Exception {
		return sql.selectOne(namespace+"sumSide", cartVO);
	}

	@Override
	public String getMaxCart_id() throws Exception {
		return sql.selectOne(namespace+"getMaxCart_id");
	}

	/**
	 * 피자 장바구니에서 피자 하나 삭제
	 * @param cartVO
	 * @throws Exception
	 */
	@Override		//피자 장바구니에서 피자 하나 삭제
	public void deletePizza(CartVO cartVO) throws Exception {
		sql.delete(namespace+"deletePizzaOne",cartVO);
		
	}
	/**피자 장바구니에서 전체 삭제 오버로딩
	 * @param session_id
	 * @throws Exception
	 */
	@Override 	//피자 장바구니에서 전체 삭제
	public void deletePizza(String session_id) throws Exception {
		sql.delete(namespace+"deletePizzaAll",session_id);
	}
	@Override		//피자 장바구니에서 사이드 하나 삭제
	public void deleteSideOne(CartVO cartVO) throws Exception {
		sql.delete(namespace+"deleteSideOne",cartVO);
		
	}
	
	@Override
	public void delete(CartVO cartVO) throws Exception {
		sql.delete(namespace+"delete",cartVO);
	}
	@Override	//'담기전'상태 use_id인것 다 삭제하기
	public void deleteAll(String user_id) throws Exception {
		sql.delete(namespace+"deleteAll",user_id);
		
	}

	@Override	//카테고리로 리스트 불러오기
	public List<CartVO> list() throws Exception {
		return sql.selectList(namespace+"listAll");
	}
	@Override	//카테고리로 리스트 불러오기
	public List<CartVO> list(String category) throws Exception {
		return sql.selectList(namespace+"list",category);
	}
	@Override	//아이디랑 장바구니에 해당하는 리스트 불러오기
	public List<CartVO> listFromId(String id) throws Exception {
		return sql.selectList(namespace+"listFromId",id);
	}
	@Override	//order_uid 해당하는 리스트 불러오기
	public List<CartVO> listFromOrderUID(CartVO cartVO) throws Exception {
		return sql.selectList(namespace+"listFromOrderUID",cartVO);
	}
//	----------------------------giftCart-----------------------------------
	
	@Override //피자 하나의 정보를 불러오기 
	public GiftVO giftSelect(String pizza)throws Exception {
		return sql.selectOne(namespace+"giftSelect",pizza);
	}
	
	@Override //상품권 장바구니 - 리스트
	public List<GiftVO> giftGet(String user_id) throws Exception {
		return sql.selectList(namespace+"giftGetLest",user_id);
	}
	
	@Override //상품권 장바구니 
	public void giftInsert(GiftVO vo)throws Exception {
		sql.insert(namespace+"giftInsert",vo);
	}


	@Override //장바구니에 피자가 있는지 카운트
	public int pizzacount(GiftVO vo) throws Exception {
		return sql.selectOne(namespace+"pizzacount",vo);
	}
	

	@Override //'x'버튼 클릭 시 삭제
	public void giftdelete(int uid) throws Exception {
		sql.delete(namespace+"giftdelete", uid);
	}
	

	@Override //'전체삭제' 버튼 클릭 시 전체삭제
	public void giftDeleteAll(String user_id) throws Exception {
		sql.delete(namespace+"giftDeleteAll",user_id);
	}

	@Override // 장바구니에서 '주문하기' 버튼 클릭 시 장바구니의 상품 업데이트
	public void giftOrderUpdate(GiftVO vo) throws Exception {
		sql.update(namespace+"giftOrderUpdate",vo);
	}

	@Override // giftvo uid값 가져오기
	public List<GiftVO> giftSelectGet(GiftVO vo) throws Exception {
		return sql.selectList(namespace+"giftSelectGet",vo);
	}

	@Override //결제 페이지로 정보 전송
	public List<GiftVO> giftOrderSelect(String user_id) throws Exception {

		return sql.selectList(namespace+"giftOrderSelect", user_id);
	}

	@Override //유저 아이디의 정보 불러오기
	public MemberVO memberSelect(String user_id) throws Exception {
		return sql.selectOne(namespace+"memberSelect", user_id);
	}
	
	//무통장입금 - 유저 정보 불러오기
	@Override
	public void bankUpdate(GiftVO vo1) throws Exception {
		sql.update(namespace+"bankUpdate", vo1);
	}
	
	
	//카카오 - 유저 정보 불러오기
	@Override
	public MemberVO kakaoMember(String user_id) throws Exception {
		return sql.selectOne(namespace+"kakaoMember",user_id);
	}
	//gift 주문 상세 페이지 - 유저 아이디 정보 불러오기
	@Override
	public CouponVO couponSelect(String user_id) throws Exception {
		return sql.selectOne(namespace+"couponSelect",user_id);
	}
	
	//gift 주문 상세 페이지 - e쿠폰 주문 페이지
	@Override
	public GiftVO coupon_order(CouponVO coupon) throws Exception {
		return sql.selectOne(namespace+"coupon_order",coupon);
	}
	
	//쿠폰 주문 페이지 - 주문번호 불러오기
	@Override
	public List<OrderGiftVO> cartGiftSelect(String user_id) throws Exception {
		return sql.selectList(namespace+"cartGiftSelect",user_id );
	}
	
	//쿠폰 주문 페이지 - e_coupon로 cart_gift
	@Override
	public GiftVO couponOrder(int e_coupon) throws Exception {
		return sql.selectOne(namespace+"couponOrder", e_coupon);
	}
	
	
	
	
	
	

	
	
	
	
	
	
	
}
