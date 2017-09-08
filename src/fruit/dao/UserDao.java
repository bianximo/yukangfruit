package fruit.dao;

import java.util.List;

import fruit.entity.User;

public interface UserDao {
	// 登录
	public boolean login(String userName, String password);

	// 用户注册
	public int regist(User user);

	// 用户删除
	public int delete(String userName);

	// 用户更新
	public int update(User user);

	// 查找所有用户
	public List<User> findAll();

	// 查找单个用户
	public User findByUserName(String userName);
}
