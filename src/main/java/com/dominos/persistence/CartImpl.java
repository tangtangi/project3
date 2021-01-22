package com.dominos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dominos.domain.CartVO;
import com.dominos.domain.GiftVO;

@Repository
public class CartImpl implements CartDAO{

	private static final String namespace = "com.dominos.mapper.CartMapper."; 
	
	@Inject
	public SqlSession sql;
	
	@Override	//카트 업데이트
	public void update(CartVO cartVO) throws Exception {
		sql.update(namespace+"update",cartVO);
	}
	@Override	//도우 업데이트
	public void updateDough(CartVO cartVO) throws Exception {
		sql.update(namespace+"updateDough",cartVO);
	}
	@Override	//OrderUid 업데이트
	public void updateOrderUid(CartVO cartVO) throws Exception {
		sql.update(namespace+"updateOrderUid",cartVO);
	}
	@Override	//User_id 업데이트
	public void updateUser_id(CartVO cartVO) throws Exception {
		sql.update(namespace+"updateUser_id",cartVO);
	}

	@Override	//카트 인서트
	public void insert(CartVO cartVO) throws Exception {
		sql.insert(namespace+"insert",cartVO);
		
	}

	@Override	//토핑 이름으로 카트에 있는지 없는지 판별.-> 없으면 인서트, 없으면 감소
	public int check(CartVO cartVO) throws Exception {
		return sql.selectOne(namespace+"check", cartVO);
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
	@Override
	public void delete(CartVO cartVO) throws Exception {
		sql.delete(namespace+"delete",cartVO);
	}

	@Override		//피자 장바구니에서 피자 하나 삭제
	public void deletePizzaOne(CartVO cartVO) throws Exception {
		sql.delete(namespace+"deletePizzaOne",cartVO);
		
	}
	@Override		//피자 장바구니에서 사이드 하나 삭제
	public void deleteSideOne(CartVO cartVO) throws Exception {
		sql.delete(namespace+"deleteSideOne",cartVO);
		
	}
	
	@Override 	//피자 장바구니에서 전체 삭제
	public void deletePizzaAll(String session_id) throws Exception {
		sql.delete(namespace+"deletePizzaAll",session_id);
	}
	@Override	//'담기전'상태 use_id인것 다 삭제하기
	public void deleteAll(String user_id) throws Exception {
		sql.delete(namespace+"deleteAll",user_id);
		
	}

	@Override	//카테고리로 리스트 불러오기
	public List<CartVO> list(String category) throws Exception {
		return sql.selectList(namespace+"list",category);
	}
	@Override	//아이디랑 장바구니에 해당하는 리스트 불러오기
	public List<CartVO> listFromId(String id) throws Exception {
		return sql.selectList(namespace+"listFromId",id);
	}

// --------------------------------------------------------

	//피자 하나의 정보를 불러오기 
	@Override
	public GiftVO giftSelect(String pizza)throws Exception {
		return sql.selectOne(namespace+"giftSelect",pizza);
	}
	
	//상품권 장바구니 - 리스트
	@Override
	public List<GiftVO> giftGet(String user_id) throws Exception {
		return sql.selectList(namespace+"giftGetLest",user_id);
	}
	
	//상품권 장바구니 
	@Override
	public void giftInsert(GiftVO vo)throws Exception {
		sql.insert(namespace+"giftInsert",vo);
	}

	//장바구니에 피자가 있는지 카운트
	@Override
	public int pizzacount(GiftVO vo) throws Exception {
		return sql.selectOne(namespace+"pizzacount",vo);
	}
	
	//'x'버튼 클릭 시 삭제
	@Override
	public void giftdelete(int uid) throws Exception {
		sql.delete(namespace+"giftdelete", uid);
	}
	
	//'전체삭제' 버튼 클릭 시 전체삭제
	@Override
	public void giftDeleteAll(String user_id) throws Exception {
		sql.delete(namespace+"giftDeleteAll",user_id);
	}
	
	
}
