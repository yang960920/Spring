package com.multi.mvc300;


import org.apache.commons.dbcp.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//테이블 하나당 DAO하나! ==> CUD를 완성!! 
@Component
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(BbsVO bag) {
		System.out.println("------" + my);
		int result = my.insert("bbs.create", bag);
		return result;
	}
	public int update(BbsVO bag) {
		System.out.println("------" + my);
		int result = my.update("bbs.update", bag);
		return result;
	}
	public int delete(int no) {
		System.out.println("------" + my);
		int result = my.delete("bbs.delete", no);
		return result;
	}
	public BbsVO one(int no) {
		System.out.println("------" + my);
		BbsVO bag = my.selectOne("bbs.one", no);
		return bag;
	}

}