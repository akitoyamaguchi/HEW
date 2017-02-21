package jp.ac.hal.hew;

import jp.ac.hal.db.CommonDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by naoaki-sato on 17/02/19.
 */
public class UserDAO extends CommonDAO {
    public UserDAO() throws ClassNotFoundException {
        super();
    }

    public boolean insert(User user) {
        try {
            String sql = "INSERT INTO t_tr_users VALUES(?, ?, 1, NULL)";

            try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
                ps.setString(1, user.getMail() );
                ps.setString(2, user.getPasswd() );

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

    public User selectByAddressAndPasswd(String address, String passwd) {
        User user = null;

        try {
            String sql = "SELECT * FROM t_tr_users WHERE user_mail_address = ? AND user_password = ? ";

            try(PreparedStatement ps = super.getPreparedStatement(sql) ) {
                ps.setString(1, address);
                ps.setString(2, passwd);
                try(ResultSet rs = ps.executeQuery() ) {
                    while (rs.next()) {
                        user = new User(
                                rs.getString("user_mail_address"),
                                rs.getString("user_password"),
                                rs.getBoolean("is_member"),
                                rs.getString("user_withdrawal_at") );
                    }
                }
            }finally {
                super.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
