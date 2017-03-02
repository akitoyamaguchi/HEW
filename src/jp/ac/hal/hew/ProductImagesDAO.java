package jp.ac.hal.hew;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jp.ac.hal.db.CommonDAO;

public class ProductImagesDAO extends CommonDAO {
	ProductImages productImages;
	public ProductImagesDAO() throws ClassNotFoundException {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public List<ProductImages> seletById(int id) {
	    List<ProductImages> productImage = new ArrayList<ProductImages>();
	    try {
	        String sql = "SELECT * from t_m_product_category WHERE id = ?";
	        try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
	            ps.setInt(1, id);
	
	            try(ResultSet rs = ps.executeQuery() ) {
	            	while(rs.next() ) {
	            		productImage.add(new ProductImages(
	                            rs.getInt("products_images_product_id"),
	                            rs.getInt("image_number"),
	                            rs.getString("path") ) );
	            	}
	            }
	        }finally {
	            super.close();
	        }
	    }catch (SQLException e) {
	        e.printStackTrace();
	    }
	
	    return productImage;
	}

}
