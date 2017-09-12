package fruit.dao;

import java.util.List;

import fruit.entity.Order;

public interface OrderDao {
	//��Ӷ���
	public int add(Order o);
	
	//ɾ������
	public int delete(int id);
	
	//��ѯ���ж���
	public List<Order> findAll();
	
	//�����û���ѯ����
	public List<Order> findByUserId(int id);
}
