package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.CartVO;
import com.dominos.domain.GiftVO;

public interface CartDAO {
	
	public void update(CartVO cartVO) throws Exception;
	public void updateDough(CartVO cartVO) throws Exception;
	public void updateOrderUid(CartVO cartVO) throws Exception;
	public void updateUser_id(CartVO cartVO) throws Exception;
	public void insert(CartVO cartVO) throws Exception;
	public void delete(CartVO cartVO) throws Exception;
	public void deletePizzaOne(CartVO cartVO) throws Exception;	//피자 장바구니에서 피자 하나 삭제
	public void deleteSideOne(CartVO cartVO) throws Exception;	//피자 장바구니에서 사이드 하나 삭제
	public void deletePizzaAll(String session_id) throws Exception;	//피자 장바구니에서 전체 삭제
	public void deleteAll(String user_id) throws Exception;
	public int check(CartVO cartVO) throws Exception;
	public int checkFromId(String user_id) throws Exception;
	public int cartCnt(String session_id) throws Exception;
	public int getCountDough(CartVO cartVO) throws Exception;	//'담기전'상태 use_id인것 다 삭제하기
	public String sumPizza(CartVO cartVO) throws Exception;	//피자 수량 토탈 
	public String sumJuice(CartVO cartVO) throws Exception;	//피자 수량 토탈 
	public String sumSide(CartVO cartVO) throws Exception;	//피자 수량 토탈 
	public String getMaxCart_id() throws Exception;	//피자인 것 중에서 가장 큰 카트아이디 값 찾기
	public List<CartVO> list(String category) throws Exception;	//카테고리로 리스트 불러오기
	public List<CartVO> listFromId(String id) throws Exception;	//아이디랑 장바구니에 해당하는 리스트 불러오기
	
//	--------------------------------------------
	
	public GiftVO giftSelect(String pizza) throws Exception;
	public List<GiftVO> giftGet(String user_id) throws Exception;
	public void giftInsert(GiftVO vo) throws Exception; 
	public int pizzacount(GiftVO vo) throws Exception;
	public void giftdelete(int uid) throws Exception;
	public void giftDeleteAll(String user_id) throws Exception;
}