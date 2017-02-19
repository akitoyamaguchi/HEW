package jp.ac.hal.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by naoaki-sato on 17/02/18.
 */
public class CommonDAO {
    private Connection con;

    public CommonDAO() throws ClassNotFoundException {
        Class.forName(DB_SETTINGS.DRIVER);
    }

    private void open() throws SQLException {
        if(this.con == null) {
            this.con = DriverManager.getConnection(DB_SETTINGS.URL, DB_SETTINGS.DB_USER, DB_SETTINGS.DB_PASSWD);
        }
    }

    protected void close() throws SQLException {
        if(this.con != null && !this.con.isClosed() ) {
            this.con.close();
            this.con = null;
        }
    }

    protected PreparedStatement getPreparedStatement(String sql) throws SQLException {
        this.open();

        return this.con.prepareStatement(sql);
    }

}
