package jp.ac.hal.hew;

public class UserAddress {
	private String userMailAdd;
	private int deliveryAddressNum;
	private String name;
	private String kana;
	private String zipcode;
	private String address;
	private String phoneNum;
	public UserAddress(String userMailAdd, int deliveryAddressNum, String name, String kana, String zipcode,
			String address, String phoneNum) {
		super();
		this.userMailAdd = userMailAdd;
		this.deliveryAddressNum = deliveryAddressNum;
		this.name = name;
		this.kana = kana;
		this.zipcode = zipcode;
		this.address = address;
		this.phoneNum = phoneNum;
	}
	public String getUserMailAdd() {
		return userMailAdd;
	}
	public void setUserMailAdd(String userMailAdd) {
		this.userMailAdd = userMailAdd;
	}
	public int getDeliveryAddressNum() {
		return deliveryAddressNum;
	}
	public void setDeliveryAddressNum(int deliveryAddressNum) {
		this.deliveryAddressNum = deliveryAddressNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKana() {
		return kana;
	}
	public void setKana(String kana) {
		this.kana = kana;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	
	
}
