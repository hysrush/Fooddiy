package kr.co.bit.menu.vo;

public class CartStoreVO {
	String id;
	String storeName;
	String storeAddr;
	String storePhone;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreAddr() {
		return storeAddr;
	}
	public void setStoreAddr(String storeAddr) {
		this.storeAddr = storeAddr;
	}
	public String getStorePhone() {
		return storePhone;
	}
	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}
	@Override
	public String toString() {
		return "CartStoreVO [id=" + id + ", storeName=" + storeName + ", storeAddr=" + storeAddr + ", storePhone="
				+ storePhone + "]";
	}
}
