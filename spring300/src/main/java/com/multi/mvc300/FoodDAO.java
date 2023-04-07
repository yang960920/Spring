package com.multi.mvc300;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FoodDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(FoodVO bag) {
		System.out.println("------" + my);
		int result = my.insert("food.create", bag);
		return result;
	}

	public int update(FoodVO bag) {
		System.out.println("------" + my);
		int result = my.update("food.update", bag);
		return result;
	}
	
	public int delete(String id) {
		System.out.println("------" + my);
		int result = my.delete("food.delete", id);
		return result;
	}
	
	public List<FoodVO> list() {
		List<FoodVO> list = my.selectList("food.all");
		return list;	
	}
	
	public FoodVO one(String id) {
		FoodVO bag = my.selectOne("food.one",id);
		
		return bag;
	}
	
}
