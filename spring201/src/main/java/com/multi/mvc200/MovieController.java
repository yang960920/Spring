package com.multi.mvc200;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

	@RequestMapping("movie")
	public void com(MovieVO bag,Model model) {
		System.out.println(bag);
		bag.setSum(bag.getPrice()*bag.getPeople());
		model.addAttribute("bag",bag);
	}
	@RequestMapping("fruit")
	public void fruit(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("사과");
		list.add("샤인머스켓");
		list.add("바나나");
		list.add("배");
		model.addAttribute("list",list);
	}
	@RequestMapping("tour")
	public void tour(Model model) {
	ArrayList<String> list = new ArrayList<String>();
	list.add("제주도");
	list.add("미국");
	list.add("호주");
	list.add("이탈리아");
	list.add("아프리카");
		model.addAttribute("list", list);
	}
	
}
