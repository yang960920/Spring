package com.multi.mvc300;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	@Autowired
	FoodDAO dao;
	
	@RequestMapping("insert44")
	public void insert(FoodVO bag) {
		
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update44")
	public void update(FoodVO bag) {
		
		System.out.println("update요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.update(bag);
	}
	
	@RequestMapping("delete44")
	public void delete(FoodVO bag) {
		
		System.out.println("delete요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		int result = dao.delete(bag.getId());
	}
	
	@RequestMapping("list44")
	public void list(Model model) {
		List<FoodVO> list = dao.list();
		model.addAttribute("list",list);	
	}
	
	@RequestMapping("one44")
	public void one(String id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		FoodVO bag = dao.one(id);
		model.addAttribute("bag", bag);
		//bag에 검색결과 다 들어있음.
		//views아래 one.jsp로 쓸 수 있도록 설정해주어야 함.
		//views까지 전달할 속성으로 추가해주세요. 
	}
	
}
