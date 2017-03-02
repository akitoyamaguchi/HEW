package jp.ac.hal.hew;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jp.ac.hal.db.CommonDAO;

public class MakerDAO extends CommonDAO {
	public MakerDAO() throws ClassNotFoundException {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	Makers maker;

	public Makers seletById(int id) {
	    Makers maker = null;
	    try {
	        String sql = "SELECT * from t_m_makers WHERE makers_maker_id = ?";
	        try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
	            ps.setInt(1, id);
	
	            try(ResultSet rs = ps.executeQuery() ) {
	                if(rs.next() ) {
	                    maker = new Makers(
	                            rs.getInt("makers_maker_id"),
	                            rs.getString("maker_name"),
	                            rs.getString("representative_name"),
	                            rs.getString("maker_phone_number"),
	                            rs.getString("maker_address") );
	                }
	            }
	        }finally {
	            super.close();
	        }
	    }catch (SQLException e) {
	        e.printStackTrace();
	    }
	
	    return maker;
	}
}

