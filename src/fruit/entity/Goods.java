package fruit.entity;

public class Goods {
	private int goodsId;
	private String goodsName;
	private double price;
	private int sale;
	private int stock;
	private String Desc;
	private String imgPath;
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getDesc() {
		return Desc;
	}
	public void setDesc(String desc) {
		Desc = desc;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", goodsName=" + goodsName + ", price=" + price + ", sale=" + sale
				+ ", stock=" + stock + ", Desc=" + Desc + ", imgPath=" + imgPath + "]";
	}
	public Goods(int goodsId, String goodsName, double price, int sale, int stock, String desc, String imgPath) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.price = price;
		this.sale = sale;
		this.stock = stock;
		Desc = desc;
		this.imgPath = imgPath;
	}
	public Goods(String goodsName, double price, int sale, int stock, String desc, String imgPath) {
		super();
		this.goodsName = goodsName;
		this.price = price;
		this.sale = sale;
		this.stock = stock;
		Desc = desc;
		this.imgPath = imgPath;
	}
	public Goods() {
		super();
	}
	
	
}
