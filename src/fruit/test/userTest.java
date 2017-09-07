package fruit.test;

import org.junit.Assert;
import org.junit.Test;

import fruit.dao.UserDao;
import fruit.daoimpl.UserDaoImpl;

public class userTest {
	@Test
	public void loginTest(){
		UserDao ud = new UserDaoImpl();
		boolean result = ud.login("уехЩ", "13");
		Assert.assertEquals(true, result);
	}
}
