package shuaiwei.Dao;

import java.sql.SQLException;
import java.util.List;

import shuaiwei.model.User;

public class TestUsers {
	public static void main(String[] args) throws SQLException {
		UserDao userDao=new UserDao();
//		User user=new User();
//		user.setCarid("豫c9999c");
//		user.setUsername("李甜乐");
//		user.setMobile("18438128038");
//		user.setItemname("换机油");
//		user.setPrice(100);
//		user.setZhifutype("转账");
//		userDao.addUser(user);
//		List<User> list=userDao.queryZhangdanlistsByOther("挂账");
//		for (User user2 : list) {
//			System.out.println(user2.toString());
//		}
		System.out.println(userDao.queryAcountEverydayAndGuazhangOther("110"));
	}
	
	
	
	
	
	
}
