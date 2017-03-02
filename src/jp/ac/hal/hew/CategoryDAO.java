package jp.ac.hal.hew;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jp.ac.hal.db.CommonDAO;

public class CategoryDAO extends CommonDAO {
	Category category;
	public CategoryDAO() throws ClassNotFoundException {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public Category seletById(int id) {
	    Category category = null;
	    try {
	        String sql = "SELECT * from t_m_product_category WHERE product_category_category_id = ?";
	        try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
	            ps.setInt(1, id);
	
	            try(ResultSet rs = ps.executeQuery() ) {
	                if(rs.next() ) {
	                    category = new Category(
	                            rs.getInt("product_category_category_id"),
	                            rs.getString("category_name"),
	                            rs.getString("remarks") );
	                }
	            }
	        }finally {
	            super.close();
	        }
	    }catch (SQLException e) {
	        e.printStackTrace();
	    }
	
	    return category;
	}
}
