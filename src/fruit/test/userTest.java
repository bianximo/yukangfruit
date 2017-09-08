package fruit.test;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import fruit.dao.UserDao;
import fruit.daoimpl.UserDaoImpl;
import fruit.entity.User;

public class userTest {
	@Test
	public void loginTest(){
		UserDao ud = new UserDaoImpl();
		boolean result = ud.login("张三", "13");
		Assert.assertEquals(true, result);
	}
	
	@Test
	public void registTest(){
		User u = new User("李四", "111", "山西", "13311133333");
		UserDao ud = new UserDaoImpl();
		int result = ud.regist(u);
		Assert.assertEquals(1, result);
	}
	
	@Test
	public void deleteTest(){
		String userName = "李四";
		int result = 0;
		UserDao ud = new UserDaoImpl();
		result = ud.delete(userName);
		Assert.assertEquals(2, result);
	}
	
	@Test
	public void findTest(){
		String name = "张三";
		User u = new UserDaoImpl().findByUserName(name);
		System.out.println(u);
	}
	
	@Test
	public void findAllTest(){
		List<User>list = new UserDaoImpl().findAll();
		for (User user : list) {
			System.out.println(user);
		}
	}
	
	@Test
	public void updateTest(){
		User u = new User("李四", "123", "河南", "1333333322");
		int result = new UserDaoImpl().update(u);
		Assert.assertEquals(1, result);
	}
}
