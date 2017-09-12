package fruit.entity;

import java.sql.Date;

public class Order {
	private int orderId;
	private String goodsName;
	private int userId;
	private int goodsNum;
	private double goodsPrice;
	private Date orderDate;//
	private String transType;
	private int isSend;//
	private Date sendDate;//
	private String address;
	private int isPay;//
	
	
	public Order() {
		super();
	}
	
	
	public Order(String goodsName, int userId, int goodsNum, double goodsPrice, String transType, String address) {
		super();
		this.goodsName = goodsName;
		this.userId = userId;
		this.goodsNum = goodsNum;
		this.goodsPrice = goodsPrice;
		this.transType = transType;
		this.address = address;
		java.util.Date d = new java.util.Date();
		this.orderDate = new Date(d.getTime());
	}


	public Order(int orderId, String goodsName, int userId, int goodsNum, double goodsPrice, String transType,
			String address) {
		super();
		this.orderId = orderId;
		this.goodsName = goodsName;
		this.userId = userId;
		this.goodsNum = goodsNum;
		this.goodsPrice = goodsPrice;
		this.transType = transType;
		this.address = address;
		java.util.Date d = new java.util.Date();
		this.orderDate = new Date(d.getTime());
	}


	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", goodsName=" + goodsName + ", userId=" + userId + ", goodsNum="
				+ goodsNum + ", goodsPrice=" + goodsPrice + ", orderDate=" + orderDate + ", transType=" + transType
				+ ", isSend=" + isSend + ", sendDate=" + sendDate + ", address=" + address + ", isPay=" + isPay + "]";
	}


	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	public double getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public int getIsSend() {
		return isSend;
	}
	public void setIsSend(int isSend) {
		this.isSend = isSend;
	}
	public Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getIsPay() {
		return isPay;
	}
	public void setIsPay(int isPay) {
		this.isPay = isPay;
	}
	
	
	
}
