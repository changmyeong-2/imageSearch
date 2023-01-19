package com.multi.openAPIXMLtoJSON;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TourDAO implements tourDAOinter {

	@Autowired
	SqlSessionTemplate my;
	@Override
	public void insert(TourVO vo) {
		my.insert("search.addtour", vo);
	}
	
	@Override
	public List<TourVO> list(TourVO vo) {
		return my.selectList("search.tourList");
	}
	
	@Override
	public List<TourVO> search(TourVO vo) {
		System.out.println(my.selectList("search.search2", vo));
		return my.selectList("search.search2", vo);
	}
}
