package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.AddressVO;
import com.dominos.domain.GiftVO;

public interface AddressDAO {

	public List<AddressVO> addSelect(String user_id)throws Exception;
	public void add_insert(AddressVO vo)throws Exception;
	public List<AddressVO> getAll(String user_id);
	public int getCount(AddressVO vo);
	public int getCount(String session_id);
	public void insert(AddressVO vo);
	public AddressVO selectOne(String uid);
	public void deleteOneAddress(String uid);


}
