package jp.ac.hal.hew;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Dao {
    PreparedStatement state;

    //ユーザー情報追加メソッド
    public void UserAdd(String id,String mailAdd,String passwd) throws ClassNotFoundException, SQLException{

        //ドライバー読み込み
        Class.forName("org.mariadb.jdbc.Driver");
        //DB接続（JV22部分書き換え必要）
        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/d_meganestore?user=root&password=");

        //SQL文作成(ユーザー情報追加)
        //is_memberは0と1で会員判定（0=現会員,1=退会員）
        //ユーザ情報一覧取得SQL
        String sql = "INSERT INTO t_tr_users(users_user_id,user_mail_address,user_password,is_member) VALUES (?,?,?,0)";
        //ステートメント作成
        state = conn.prepareStatement(sql);

        //ステートメントに値を入れる
        state.setString(1, id);
        state.setString(2, mailAdd);
        state.setString(3, passwd);

        //SQL実行
        state.executeUpdate();


    }//ユーザー情報一覧取得メソッド(終)
}
