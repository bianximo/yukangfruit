package fruit.entity;

public class Goods {
	private int goodsId;
	private String goodsName;
	private double goodsPrice;
	private int goodsSale;
	private int goodsStock;
	private String goodsDesc;
	private String goodsImgPath;
	private String goodsType;
	private String goodsTimeDate;
	
	public Goods(String goodsName, double goodsPrice, int goodsSale, int goodsStock, String goodsDesc,
			String goodsImgPath, String goodsType, String goodsTimeDate) {
		super();
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsSale = goodsSale;
		this.goodsStock = goodsStock;
		this.goodsDesc = goodsDesc;
		this.goodsImgPath = goodsImgPath;
		this.goodsType = goodsType;
		this.goodsTimeDate = goodsTimeDate;
	}
	
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

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getGoodsSale() {
		return goodsSale;
	}

	public void setGoodsSale(int goodsSale) {
		this.goodsSale = goodsSale;
	}

	public int getGoodsStock() {
		return goodsStock;
	}

	public void setGoodsStock(int goodsStock) {
		this.goodsStock = goodsStock;
	}

	public String getGoodsDesc() {
		return goodsDesc;
	}

	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}

	public String getGoodsImgPath() {
		return goodsImgPath;
	}

	public void setGoodsImgPath(String goodsImgPath) {
		this.goodsImgPath = goodsImgPath;
	}

	public String getGoodsType() {
		return goodsType;
	}

	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}

	public String getGoodsTimeDate() {
		return goodsTimeDate;
	}

	public void setGoodsTimeDate(String goodsTimeDate) {
		this.goodsTimeDate = goodsTimeDate;
	}

	
	public Goods(String goodsName, double goodsPrice, int goodsSale, int goodsStock, String goodsDesc,
			String goodsImgPath) {
		super();
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsSale = goodsSale;
		this.goodsStock = goodsStock;
		this.goodsDesc = goodsDesc;
		this.goodsImgPath = goodsImgPath;
	}

	public Goods(int goodsId, String goodsName, double goodsPrice, int goodsSale, int goodsStock, String goodsDesc,
			String goodsImgPath) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsSale = goodsSale;
		this.goodsStock = goodsStock;
		this.goodsDesc = goodsDesc;
		this.goodsImgPath = goodsImgPath;
	}

	public Goods() {
		super();
	}
	
	public int getHash(){
		return this.goodsName.hashCode();
	}
	
	
}
