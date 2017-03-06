package jp.ac.hal.hew.entity;

public class Category {
	private int product_category_category_id;
	private String category_name;
	private String remarks;
	
	public Category(int product_category_category_id, String category_name, String remarks) {
		super();
		this.product_category_category_id = product_category_category_id;
		this.category_name = category_name;
		this.remarks = remarks;
	}
	public int getProduct_category_category_id() {
		return product_category_category_id;
	}
	public void setProduct_category_category_id(int product_category_category_id) {
		this.product_category_category_id = product_category_category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
