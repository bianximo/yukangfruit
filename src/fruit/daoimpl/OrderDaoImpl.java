package fruit.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import fruit.dao.OrderDao;
import fruit.entity.Goods;
import fruit.entity.Order;
import fruit.util.DbUtil;

public class OrderDaoImpl implements OrderDao {

	@Override
	public int add(Order o) {
		
		Date date = o.getOrderDate();
		StringBuffer orderIdString = new StringBuffer();
		SimpleDateFormat sy = new SimpleDateFormat("yyyy");
		int i = (int)(Math.random()*100);
		String syear = sy.format(date);
		orderIdString.append(syear).append(o.getUserId()).append(o.getGoodsNum())
				.append(i);
		String sql = "INSERT INTO goodsOrder (orderId,goodsName,userId,goodsNum,goodsPrice,transType,address,orderDate) VALUES (?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = DbUtil.executePreparedStatement(sql);
		int result = 0;
		try {
			ps.setInt(1, Integer.parseInt(orderIdString.toString()));
			ps.setString(2, o.getGoodsName());
			ps.setInt(3, o.getUserId());
			ps.setInt(4, o.getGoodsNum());
			ps.setDouble(5, o.getGoodsPrice());
			ps.setString(6, o.getTransType());
			ps.setString(7, o.getAddress());
			ps.setDate(8, o.getOrderDate());
			result = ps.executeUpdate();
			DbUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findByUserId(int id) {
		String sql = "SELECT * FROM goodsOrder WHERE userId = '" + id + "'";
		List<Order>list = new ArrayList<>();
		ResultSet rs = DbUtil.executeQuery(sql);
		try {
			while (rs.next()) {
				Order order = new Order();
				order.setOrderId(rs.getInt("orderId"));
				order.setGoodsName(rs.getString("goodsName"));
				order.setUserId(id);
				order.setGoodsNum(rs.getInt("goodsNum"));
				order.setGoodsPrice(rs.getDouble("goodsPrice"));
				order.setOrderDate(rs.getDate("orderDate"));
				order.setTransType(rs.getString("transType"));
				order.setIsSend(rs.getInt("isSend"));
				order.setSendDate(rs.getDate("sendDate"));
				order.setAddress(rs.getString("address"));
				order.setIsPay(rs.getInt("isPay"));
				list.add(order);
			}
			DbUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
