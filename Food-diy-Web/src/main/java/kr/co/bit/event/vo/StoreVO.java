package kr.co.bit.event.vo;

public class StoreVO {

	public int storeNo;
	public String storeName;
	public String storePhone;
	public String storeAddr;
	public String regDate;
	
	
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStorePhone() {
		return storePhone;
	}
	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}
	public String getStoreAddr() {
		return storeAddr;
	}
	public void setStoreAddr(String storeAddr) {
		this.storeAddr = storeAddr;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "StoreVO [storeNo=" + storeNo + ", storeName=" + storeName + ", storePhone=" + storePhone
				+ ", storeAddr=" + storeAddr + ", regDate=" + regDate + "]";
	}
	
	
	
	
	
	
	

	}


	
