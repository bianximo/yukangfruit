package fruit.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import fruit.dao.GoodsDao;
import fruit.entity.Goods;
import fruit.util.DbUtil;

public class GoodsDaoImpl implements GoodsDao {

	DbUtil db = null;
	
	@Override
	public int add(Goods goods) {

		String sql = "INSERT INTO goods (goodsName,goodsPrice,goodsSale,goodsStock,goodsDesc,goodsImgPath) VALUES (?,?,?,?,?,?)";
		PreparedStatement ps = DbUtil.executePreparedStatement(sql);
		int result = 0;
		try {
			ps.setString(1, goods.getGoodsName());
			ps.setDouble(2, goods.getGoodsPrice());
			ps.setInt(3, goods.getGoodsSale());
			ps.setInt(4, goods.getGoodsStock());
			ps.setString(5, goods.getGoodsDesc());
			ps.setString(6, goods.getGoodsImgPath());
			result = ps.executeUpdate();
			DbUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int update(Goods goods) {

		String sql = "UPDATE goods SET goodsName=?,goodsPrice=?, goodsSale=? "
				+ ",goodsStock=?,goodsDesc=?, goodsImgPath=?"
				+ "WHERE goodsID=?";
		PreparedStatement ps = DbUtil.executePreparedStatement(sql);
		int result = 0;
		try {
			ps.setString(1, goods.getGoodsName());
			ps.setDouble(2, goods.getGoodsPrice());
			ps.setInt(3, goods.getGoodsSale());
			ps.setInt(4, goods.getGoodsStock());
			ps.setString(5, goods.getGoodsDesc());
			ps.setString(6, goods.getGoodsImgPath());
			ps.setInt(7, goods.getGoodsId());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DbUtil.close();
		return result;
	}

	@Override
	public int delete(int goodsid) {
		db = new DbUtil();
		String sql = "DELETE FROM goods WHERE goodsid = "+goodsid;
		int result = db.executeUpdate(sql);
		db.close();
		return result;
	}
	
	@Override
	public int delete(String goodsName) {
		String sql = "DELETE FROM goods WHERE goodsName = '" + goodsName + "'";
		int result = DbUtil.executeUpdate(sql);
		DbUtil.close();
		return result;
	}

	@Override
	public List<Goods> findAll() {
		String sql = "SELECT * FROM goods ORDER BY goodsName";
		List<Goods> list = new ArrayList<>();
		ResultSet rs = DbUtil.executeQuery(sql);
		try {
			while (rs.next()) {
				Goods goods = new Goods();
				goods.setGoodsId(rs.getInt("goodsID"));
				goods.setGoodsName(rs.getString("goodsName"));
				goods.setGoodsPrice(rs.getDouble("goodsPrice"));
				goods.setGoodsSale(rs.getInt("goodsSale"));
				goods.setGoodsStock(rs.getInt("goodsStock"));
				goods.setGoodsDesc(rs.getString("goodsDesc"));
				goods.setGoodsImgPath(rs.getString("goodsImgPath"));
				list.add(goods);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DbUtil.close();
		return list;
	}

	@Override
	public Goods find(String goodsName) {
		String sql = "SELECT * FROM goods WHERE goodsName = '" + goodsName + "'";
		Goods goods = new Goods();
		ResultSet rs = DbUtil.executeQuery(sql);
		try {
			if (rs.next()) {
				goods.setGoodsId(rs.getInt("goodsID"));
				goods.setGoodsName(goodsName);
				goods.setGoodsPrice(rs.getDouble("goodsPrice"));
				goods.setGoodsSale(rs.getInt("goodsSale"));
				goods.setGoodsStock(rs.getInt("goodsStock"));
				goods.setGoodsDesc(rs.getString("goodsDesc"));
				goods.setGoodsImgPath(rs.getString("goodsImgPath"));
				DbUtil.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return goods;
	}

	@Override
	public Goods findById(int id) {
		String sql = "SELECT * FROM goods WHERE goodsId = '" + id + "'";
		Goods goods = new Goods();
		ResultSet rs = DbUtil.executeQuery(sql);
		try {
			if (rs.next()) {
				goods.setGoodsId(id);
				goods.setGoodsName(rs.getString("goodsName"));
				goods.setGoodsPrice(rs.getDouble("goodsPrice"));
				goods.setGoodsSale(rs.getInt("goodsSale"));
				goods.setGoodsStock(rs.getInt("goodsStock"));
				goods.setGoodsDesc(rs.getString("goodsDesc"));
				goods.setGoodsImgPath(rs.getString("goodsImgPath"));
				DbUtil.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return goods;
	}

}
