package fruit.dao;

import java.util.List;

import fruit.entity.User;

public interface UserDao {
	// ��¼
	public boolean login(String userName, String password);

	// �û�ע��
	public int regist(String userName, String password, String address, String tel);

	// �û�ɾ��
	public int delete(String userName, String password);

	// �û�����
	public int update(String userName, String password, String address, String tel);

	// ���������û�
	public List<User> findAll();

	// ���ҵ����û�
	public User findByUserName(String userName);
}
