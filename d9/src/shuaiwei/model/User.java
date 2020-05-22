package shuaiwei.model;

public class User {
	private String shouyintime;
	private int orderid;
	private String carid;
	private String username;
	private String mobile;
	private String itemname;
	private int price;
	private String zhifutype;
	public String getShouyintime() {
		return shouyintime;
	}
	public void setShouyintime(String shouyintime) {
		this.shouyintime = shouyintime;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public String getCarid() {
		return carid;
	}
	public void setCarid(String carid) {
		this.carid = carid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getZhifutype() {
		return zhifutype;
	}
	public void setZhifutype(String zhifutype) {
		this.zhifutype = zhifutype;
	}
	@Override
	public String toString() {
		return "User [shouyintime=" + shouyintime + ", orderid=" + orderid + ", carid=" + carid + ", username="
				+ username + ", mobile=" + mobile + ", itemname=" + itemname + ", price=" + price + ", zhifutype="
				+ zhifutype + "]";
	}
	
}
