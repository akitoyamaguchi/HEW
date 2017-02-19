package jp.ac.hal.hew;

import jp.ac.hal.db.CommonDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by naoaki-sato on 17/02/18.
 */
public class ProductDAO extends CommonDAO {
    public ProductDAO() throws ClassNotFoundException {
        super();
    }

    public boolean insert(Product product) {
        try {
            String sql = "INSERT INTO t_tr_products VALUES(NULL,?,?,?,?,?,?,?,?,?,?)";

            try(PreparedStatement ps = super.getPreparedStatement(sql)) {
                ps.setString(1, product.getName() );
                ps.setString(2, product.getDetail() );
                ps.setInt(3, product.getMaker() );
                ps.setInt(4, product.getCategory() );
                ps.setString(5, product.getReleaseOn() );
                ps.setInt(6, product.getPrice() );
                ps.setString(7, product.getModelPath() );
                ps.setInt(8, product.getFrameColor() );
                ps.setInt(9, product.getLensColor() );
                ps.setInt(10, product.getLensType() );
                ps.setString(11, product.getSize() );

                ps.execute();
            }finally {
                super.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public Product seletById(int id) {
        Product prodcut = null;
        try {
            String sql = "SELECT * from t_tr_products WHERE id = ?";
            try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
                ps.setInt(1, id);

                try(ResultSet rs = ps.executeQuery() ) {
                    if(rs.next() ) {
                        prodcut = new Product(
                                rs.getInt("products_product_id"),
                                rs.getString("product_name"),
                                rs.getString("product_detail"),
                                rs.getInt("products_maker"),
                                rs.getInt("products_category"),
                                rs.getString("release_on"),
                                rs.getInt("products_price"),
                                rs.getString("3dmodel_path"),
                                rs.getInt("frame_color"),
                                rs.getInt("lens_color"),
                                rs.getInt("lens_type"),
                                rs.getString("size"));
                    }
                }
            }finally {
                super.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        return prodcut;
    }

    public ArrayList<Product> select() {
        ArrayList<Product> product = new ArrayList<Product>();

        try {
            String sql = "SELECT * FROM t_tr_products";

            try (PreparedStatement ps = super.getPreparedStatement(sql);
                 ResultSet rs = ps.executeQuery()) {
                while(rs.next() ) {
                    product.add(new Product(
                            rs.getInt("products_product_id"),
                            rs.getString("product_name"),
                            rs.getString("product_detail"),
                            rs.getInt("products_maker"),
                            rs.getInt("products_category"),
                            rs.getString("release_on"),
                            rs.getInt("products_price"),
                            rs.getString("3dmodel_path"),
                            rs.getInt("frame_color"),
                            rs.getInt("lens_color"),
                            rs.getInt("lens_type"),
                            rs.getString("size")));
                }
            }finally {
                super.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }
}
