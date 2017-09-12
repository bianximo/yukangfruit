package fruit.dao;

import java.util.List;

import fruit.entity.Goods;

public interface GoodsDao {
	
	//添加商品
	public int add(Goods goods);
	
	//修改商品
	public int update(Goods goods);
	
	//删除商品
	public int delete(String goodsName);
	
	//查询全部商品
	public List<Goods> findAll();
	
	//根据商品名称查询商品
	public Goods find(String goodsName);
	
	//根据商品id查询商品
	public Goods findById(int id);
}
