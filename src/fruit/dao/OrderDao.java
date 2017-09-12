package fruit.dao;

import java.util.List;

import fruit.entity.Order;

public interface OrderDao {
	//添加订单
	public int add(Order o);
	
	//删除订单
	public int delete(int id);
	
	//查询所有订单
	public List<Order> findAll();
	
	//根据用户查询订单
	public List<Order> findByUserId(int id);
}
