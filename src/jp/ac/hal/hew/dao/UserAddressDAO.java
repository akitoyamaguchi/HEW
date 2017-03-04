package jp.ac.hal.hew.dao;

import jp.ac.hal.db.CommonDAO;
import jp.ac.hal.hew.entity.UserAddress;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by naoaki-sato on 17/02/18.
 */
public class UserAddressDAO extends CommonDAO {
    public UserAddressDAO() throws ClassNotFoundException {
        super();
    }

    public boolean insert(UserAddress userAdd) {
        try {
            String sql = "INSERT INTO t_tr_users_addresses VALUES(?,?,?,?,?,?,?)";

            try(PreparedStatement ps = super.getPreparedStatement(sql)) {
                ps.setString(1, userAdd.getUserMailAddress() );
                ps.setInt(2, userAdd.getDeliveryAddressNumber() );
                ps.setString(3, userAdd.getName() );
                ps.setString(4, userAdd.getKana() );
                ps.setString(5, userAdd.getZipcode() );
                ps.setString(6, userAdd.getAddress() );
                ps.setString(7, userAdd.getPhoneNum() );

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

    public UserAddress seletById(int deliveryNum, String mail) {
        UserAddress userAdd = null;
        try {
            String sql = "SELECT * from t_tr_users_addresses WHERE users_addresses_delivery_address_number = ? AND users_addresses_user_mail_address = ?";
            try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
                ps.setInt(1, deliveryNum);
                ps.setString(2, mail);

                try(ResultSet rs = ps.executeQuery() ) {
                    if(rs.next() ) {
                        userAdd = new UserAddress(
                                rs.getString("users_addresses_user_mail_address"),
                                rs.getInt("users_addresses_delivery_address_number"),
                                rs.getString("name"),
                                rs.getString("kana"),
                                rs.getString("zipcode"),
                                rs.getString("address"),
                                rs.getString("phone_number") );
                    }
                }
            }finally {
                super.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        return userAdd;
    }

    public ArrayList<UserAddress> select(String mail) {
        ArrayList<UserAddress> userAdds = new ArrayList<UserAddress>();

        try {
            String sql = "SELECT * FROM t_tr_users_addresses WHERE users_addresses_user_mail_address = ?";

            try (PreparedStatement ps = super.getPreparedStatement(sql) ) {
            	ps.setString(1, mail);
            	
            	try(ResultSet rs = ps.executeQuery()) {
	                while(rs.next() ) {
	                    userAdds.add(new UserAddress(
	                            rs.getString("users_addresses_user_mail_address"),
	                            rs.getInt("users_addresses_delivery_address_number"),
	                            rs.getString("name"),
	                            rs.getString("kana"),
	                            rs.getString("zipcode"),
	                            rs.getString("address"),
	                            rs.getString("phone_number") ) );
	                }
            	}
            }finally {
                super.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        return userAdds;
    }

    public int columCount(String mail) {
    	int count = 0;
    	
        try {
            String sql = "SELECT count(*) as count from t_tr_users_addresses WHERE users_addresses_user_mail_address = ?";
            try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
                ps.setString(1, mail);

                try(ResultSet rs = ps.executeQuery() ) {
                    if(rs.next() ) {
                    	count = rs.getInt("count");
                    }
                }
            }finally {
                super.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    	
    	return count; 
    }
}

