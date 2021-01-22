package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.SideVO;

public interface SideDAO {

	public void create(SideVO vo) throws Exception;
	public void delete() throws Exception;
	public List<SideVO> list(String menu) throws Exception;
	public List<SideVO> listAll() throws Exception;
	public SideVO read(String uid) throws Exception;
	public SideVO readFromName(String name) throws Exception;

}
