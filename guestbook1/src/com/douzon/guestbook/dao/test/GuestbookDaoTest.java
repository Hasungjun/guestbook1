package com.douzon.guestbook.dao.test;

import java.util.List;

import com.douzon.guestbook.dao.GuestbookDao;
import com.douzon.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {
	
public static void main(String[] args) {
		
		getListTest();	
	}

	
	public static void insertTest(String name,String password,String message) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName(name);
		vo.setPassword(password);
		vo.setMessage(message);
		new GuestbookDao().insert(vo);
	}
	
	public static void getListTest() {
		List<GuestbookVo> list = new GuestbookDao().getList();
		int a = list.size();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

}
