package fruit.daoimpl;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import fruit.dao.UserDao;
import fruit.entity.User;
import fruit.util.DbUtil;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean login(String userName, String password) {
		String sql = "SELECT count(*) AS NUM FROM user WHERE userName='" + userName + "' AND userPwd='" + password
				+ "'";
		ResultSet rs = DbUtil.executeQuery(sql);
		int result = 0;
		try {
			if (rs.next()) {
				result = rs.getInt("NUM");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DbUtil.close();
		if (result > 0)
			return true;
		else
			return false;
	}

	@Override
	public int regist(User user) {
		String sql = "INSERT INTO user (userName,userPwd,userAddr,userTel) VALUES (?,?,?,?)";
		PreparedStatement ps = DbUtil.executePreparedStatement(sql);
		int result = 0;
		try {
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getAddress());
			ps.setString(4, user.getTel());
			result = ps.executeUpdate();
			DbUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	@Override
	public int delete(String userName) {
		String sql = "DELETE FROM user WHERE userName = '" + userName + "'";
		int result = DbUtil.executeUpdate(sql);
		DbUtil.close();
		return result;
	}

	@Override
	public int update(User u) {
		String sql = "UPDATE user SET userPwd=?,userAddr=?, userTel=? WHERE userName=?";
		PreparedStatement ps = DbUtil.executePreparedStatement(sql);
		int result = 0;
		try {
			ps.setString(1, u.getPassword());
			ps.setString(2, u.getAddress());
			ps.setString(3, u.getTel());
			ps.setString(4, u.getUserName());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DbUtil.close();

		return result;

	}

	@Override
	public List<User> findAll() {
		String sql = "SELECT * FROM user ORDER BY userName";
		List<User> users = new ArrayList<>();
		ResultSet rs = DbUtil.executeQuery(sql);
		try {
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("userId"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("userPwd"));
				user.setAddress(rs.getString("userAddr"));
				user.setTel(rs.getString("userTel"));
				users.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DbUtil.close();

		return users;
	}

	@Override
	public User findByUserName(String userName) {
		String sql = "SELECT * FROM user WHERE userName = '" + userName + "'";
		User user = new User();
		ResultSet rs = DbUtil.executeQuery(sql);
		try {
			if (rs.next()) {
				user.setId(rs.getInt("userId"));
				user.setUserName(userName);
				user.setPassword(rs.getString("userPwd"));
				user.setAddress(rs.getString("userAddr"));
				user.setTel(rs.getString("userTel"));
				DbUtil.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

}
