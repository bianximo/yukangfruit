package fruit.daoimpl;

import java.sql.ResultSet;
import java.util.List;

import fruit.dao.UserDao;
import fruit.entity.User;
import fruit.util.DbUtil;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean login(String userName, String password) {
		String sql = "SELECT count(*) AS NUM FROM user WHERE userName='"+userName+"' AND userPwd='"
				+password+"'";
		ResultSet rs = DbUtil.executeQuery(sql);
		int result = 0;
		try {
			if(rs.next()){
				result = rs.getInt("NUM");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DbUtil.close();
		if(result>0)return true;
		else return false;
	}

	@Override
	public int regist(String userName, String password, String address, String tel) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String userName, String password) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(String userName, String password, String address, String tel) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findByUserName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

}
