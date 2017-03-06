package jp.ac.hal.hew.entity;

public class Makers {
	private int makers_maker_id;
	private String maker_name;
	private String representative_name;
	private String maker_phone_number;
	private String maker_address;
	
	
	
	public Makers(int makers_maker_id, String maker_name, String representative_name, String maker_phone_number,
			String maker_address) {
		super();
		this.makers_maker_id = makers_maker_id;
		this.maker_name = maker_name;
		this.representative_name = representative_name;
		this.maker_phone_number = maker_phone_number;
		this.maker_address = maker_address;
	}
	public int getMakers_maker_id() {
		return makers_maker_id;
	}
	public void setMakers_maker_id(int makers_maker_id) {
		this.makers_maker_id = makers_maker_id;
	}
	public String getMaker_name() {
		return maker_name;
	}
	public void setMaker_name(String maker_name) {
		this.maker_name = maker_name;
	}
	public String getRepresentative_name() {
		return representative_name;
	}
	public void setRepresentative_name(String representative_name) {
		this.representative_name = representative_name;
	}
	public String getMaker_phone_number() {
		return maker_phone_number;
	}
	public void setMaker_phone_number(String maker_phone_number) {
		this.maker_phone_number = maker_phone_number;
	}
	public String getMaker_address() {
		return maker_address;
	}
	public void setMaker_address(String maker_address) {
		this.maker_address = maker_address;
	}
	
	
}
