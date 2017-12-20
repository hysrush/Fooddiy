package kr.co.bit.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.menu.dao.Select_Ing_DAO;
import kr.co.bit.vo.IngredientsVO;

@Service
public class Select_Ing_ServiceImp implements Select_Ing_Service{
	
	@Autowired
	Select_Ing_DAO dao;
	
	@Override
	public List<IngredientsVO> selectAllIng() {
		List<IngredientsVO> ingListAll = dao.selectAllIng();
		
		return ingListAll;
	}
	
}
