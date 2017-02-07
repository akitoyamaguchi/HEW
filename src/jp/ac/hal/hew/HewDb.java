package jp.ac.hal.hew;

import java.sql.SQLException;
import jp.ac.hal.db.*;

public class HewDb {

    //ユーザー情報追加メソッド
    public void userAdd(String id,String mailAdd,String passwd) throws ClassNotFoundException, SQLException{
    	SqlValueBeans svb = new SqlValueBeans();;
	
    	// 登録する情報をBeansに格納
    	svb.setSqlValue(id);
    	svb.setSqlValue(mailAdd);
    	svb.setSqlValue(passwd);
    	//ユーザ情報登録SQL
    	String sql = "INSERT INTO t_tr_users(users_user_id,user_mail_address,user_password,is_member) VALUES (?,?,?,0)";
    	
        try {
        	// Daoクラスのインスタンス化
        	Dao dao = new Dao();
        	// DBとのコネクション確立
        	dao.connect();
        	// SQL文実行
        	dao.executeU(sql, svb);
        }catch(ClassNotFoundException cnfe) {
        	// 未実装
        }catch(SQLException sqle) {
        	// 未実装
        }
    }
}
