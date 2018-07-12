package test;

import java.util.*;
public class Test {
	public static void main(String[] args) { 
		//age 몇년 생인지 추출
		//1998년생 남자
		//980000-1
		//98+00+00+"-"+1or2
		//980504-1
		List<String> list = TestDAO.getInstance().getSnn();
		System.out.println(list);
	}
}
