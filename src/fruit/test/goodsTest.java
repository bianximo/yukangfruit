package fruit.test;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import fruit.daoimpl.GoodsDaoImpl;
import fruit.entity.Goods;

public class goodsTest {
	@Test
	public void addTest(){
		Goods g = new Goods("橘子", 43.2, 11, 5, "一个橘子", "/");
		int result = new GoodsDaoImpl().add(g);
		Assert.assertEquals(1, result);
	}
	
	@Test
	public void updateTest(){
		Goods g = new Goods(1,"西瓜", 13, 15, 1000, "一个大西瓜", "/");
		int result = new GoodsDaoImpl().update(g);
		Assert.assertEquals(1, result);
	}
	
	@Test
	public void deleteTest(){
		String name = "西瓜";
		int result = new GoodsDaoImpl().delete(name);
		Assert.assertEquals(1, result);
	}
	
	@Test
	public void findAllTest(){
		List<Goods>l = new GoodsDaoImpl().findAll();
		for (Goods goods : l) {
			System.out.println(goods);
		}
	}
	
	@Test
	public void findTest(){
		String name = "橘子";
		Goods g = new GoodsDaoImpl().find(name);
		System.out.println(g);
	}
}
