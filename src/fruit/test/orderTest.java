package fruit.test;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import fruit.daoimpl.OrderDaoImpl;
import fruit.entity.Order;

public class orderTest {
	@Test
	public void addTest() {
		Order o = new Order("����", 1, 12, 13.2, "ƽ��", "����У��");
		int result = new OrderDaoImpl().add(o);
		
		 Assert.assertEquals(1, result);
//		
	}
	
	@Test
	public void find(){
		List<Order>list = new OrderDaoImpl().findByUserId(4);
		System.out.println(list);
	}
	
	@Test
	public void t() {
		String s = "����280g";
		System.out.println(s.hashCode());
	}
}
