package com.dominos.persistence;

import java.util.List;

import com.dominos.domain.PizzaVO;

/**
 * @author pc5
 *
 */
public interface PizzaDAO {
	
	public void create(PizzaVO vo) throws Exception;
	public void addAttach(String fullName) throws Exception;
	public List<PizzaVO> list() throws Exception;
	public PizzaVO read(String uid) throws Exception;
	public void update(PizzaVO vo) throws Exception;
	public void delete(PizzaVO vo) throws Exception;
}
