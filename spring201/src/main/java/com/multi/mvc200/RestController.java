package com.multi.mvc200;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {

	@RequestMapping("json1")
	@ResponseBody // 요청을 받으면 return 되는 데이터를 json으로 만들어서 요청하는곳으로 다시보냄.
	public MemberVO json1() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("yang");
		bag.setTel("011");
		return bag;
	}
	
	@RequestMapping("json3")
	@ResponseBody // 요청을 받으면 return 되는 데이터를 json으로 만들어서 요청하는곳으로 다시보냄.
	public BbsVO json3() {
		BbsVO bag = new BbsVO();
		bag.setNo(1);
		bag.setTitle("벌써수요일?");
		bag.setContent("2일만홧팅");
		bag.setWriter("yang");
		return bag;
	}
	
	@RequestMapping("json2")
	@ResponseBody // 요청을 받으면 return 되는 데이터를 json으로 만들어서 요청하는곳으로 다시보냄.
	public ArrayList<MemberVO> json2() {
		MemberVO bag = new MemberVO();
		bag.setId("food");
		bag.setPw("2342");
		bag.setName("hyun");
		bag.setTel("010");
		MemberVO bag2 = new MemberVO();
		bag2.setId("root");
		bag2.setPw("1234");
		bag2.setName("yang");
		bag2.setTel("011");
		
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("json4")
	@ResponseBody 
	public ArrayList<BbsVO> json4() {
		BbsVO bag = new BbsVO();
		bag.setNo(1);
		bag.setContent("hahahaha");
		
		BbsVO bag2 = new BbsVO();
		bag2.setNo(2);
		bag2.setContent("smile");
		
		ArrayList<BbsVO> list = new ArrayList<BbsVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;  
	}
	
	@RequestMapping("jsonResponse5")
	@ResponseBody 
	public MapVO jsonResponse5() {
		MapVO bag = new MapVO();
		bag.setLati(37.51093);
		bag.setLongi(127.0592);
		System.out.println(bag);
		return bag;
	}
	
	
	
	
}
