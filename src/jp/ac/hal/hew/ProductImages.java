package jp.ac.hal.hew;

public class ProductImages {
	private int products_images_product_id;
	private int image_number;
	private String path;
	
	public ProductImages(int products_images_product_id, int image_number, String path) {
		super();
		this.products_images_product_id = products_images_product_id;
		this.image_number = image_number;
		this.path = path;
	}
	
	public int getProducts_images_product_id() {
		return products_images_product_id;
	}
	public void setProducts_images_product_id(int products_images_product_id) {
		this.products_images_product_id = products_images_product_id;
	}
	public int getImage_number() {
		return image_number;
	}
	public void setImage_number(int image_number) {
		this.image_number = image_number;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
}
