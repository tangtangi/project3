package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.AddressVO;

public interface AddressDAO {
	public List<AddressVO> getAll(String user_id);
	public int getCount(AddressVO vo);
	public int getCount(String session_id);
	public void insert(AddressVO vo);
	public AddressVO selectOne(String uid);
	public void deleteOneAddress(String uid);
}
