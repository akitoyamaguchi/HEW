package jp.ac.hal.hew;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jp.ac.hal.db.*;
import jp.ac.hal.debug.GeneralDebug;
import jp.ac.hal.debug.SQLDebug;

public class HewDb {

    // ユーザー登録処
    public void userAdd(String mailAdd,String passwd) throws ClassNotFoundException, SQLException {
    	SqlValueBeans svb = new SqlValueBeans();
	
    	// 登録する情報をBeansに格納
    	svb.setSqlValue(mailAdd);
    	svb.setSqlValue(passwd);
    	//ユーザ情報登録SQL
    	String sql = "INSERT INTO t_tr_users(user_mail_address,user_password,is_member) VALUES (?,?,0)";
    	
    	// Daoクラスのインスタンス化
    	Dao dao = new Dao();
    	// DBとのコネクション確立
    	dao.connect();
    	// SQL文実行
    	dao.executeU(sql, svb);
    }

    // ログイン処理
    public int userLogin(String mailAdd, String passwd) throws ClassNotFoundException, SQLException {
    	SqlValueBeans svb = new SqlValueBeans();
    	int result = 3;
    	
    	svb.setSqlValue(mailAdd);
    	svb.setSqlValue(passwd);
    	
    	String sql = "SELECT count(*) FROM t_tr_users  WHERE user_mail_address = ? AND user_password= ?";
    	
		Dao dao = new Dao();
		dao.connect();
		try(ResultSet res = dao.exectuteQ(sql, svb) ) {
			res.next();
			int cnt = res.getInt("count(*)");
			// ログイン失敗
			if(cnt == 0) {
				result = 0;
			// ログイン成功
			} else if(cnt == 1) {
				result = 1;
			//　異常値
			} else {
				result = 2;
			}
		}
    	
    	return result;
    }

    // 退会処理
    public int withdrawal(String id, String passwd) throws ClassNotFoundException, SQLException {
    	SqlValueBeans svb = new SqlValueBeans();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd HH:mm:ss");
    	Date date = new Date();
    	int result = 2;
    	
    	String sql = "UPDATE t_tr_users SET is_member = 1 , user_withdrawal_at = ? WHERE users_user_id = ? AND user_password= ?";
    
    	//現在日付の取得
    	String datetimeVal = sdf.format(date);    
    
    	svb.setSqlValue(datetimeVal);
    	svb.setSqlValue(id);
    	svb.setSqlValue(passwd);

		Dao dao = new Dao();
		dao.connect();
		int cnt = dao.executeU(sql, svb);
		
		// 退会失敗
		if(cnt == 0) {
			result = 0;
		// 退会成功
		} else if(cnt == 1) {
			result = 1;
		//異常値
		} else {
			result = 2;
		}
    	
    	return result;
    }
}


/********************************************************************************************************************************
**      以下飯山の作成したDAO
********************************************************************************************************************************/

//	
//    //ユーザー情報追加メソッド
//    public void UserAdd(String id,String mailAdd,String passwd) throws ClassNotFoundException, SQLException{
//
//        //ドライバー読み込み
//        Class.forName("org.mariadb.jdbc.Driver");
//        //DB接続（JV22部分書き換え必要）
//        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/d_meganestore?user=root&password=");
//
//        //SQL文作成(ユーザー情報追加)
//        //is_memberは0と1で会員判定（0=現会員,1=退会員）
//        //ユーザ情報一覧取得SQL
//        String sql = "INSERT INTO t_tr_users(users_user_id,user_mail_address,user_password,is_member) VALUES (?,?,?,0)";
//        //ステートメント作成
//        state = conn.prepareStatement(sql);
//
//        //ステートメントに値を入れる
//        state.setString(1, id);
//        state.setString(2, mailAdd);
//        state.setString(3, passwd);
//
//        //SQL実行
//        state.executeUpdate();
//
//
//    }//ユーザー情報一覧取得メソッド(終)
//    
//    //ユーザーログインメソッド（処理）
//    public void Login(String id, String passwd) throws ClassNotFoundException, SQLException{
//
//        //ドライバー読み込み
//        Class.forName("org.mariadb.jdbc.Driver");
//        //DB接続
//        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/d_meganestore?user=root&password=");
//
//        //SQL文作成(ユーザーログイン)
//        /*メモ：Sessionを実装したい…。*/
//        //ユーザ情報一覧取得SQL
//        String sql = "SELECT count(*) FROM t_tr_users  WHERE users_user_id = ? AND user_password= ? ";
//        //ステートメント作成
//        PreparedStatement state = conn.prepareStatement(sql);
//        //ステートメントに値を入れる
//        state.setString(1, id);
//        state.setString(2, passwd);
//        //SQL実行
//        ResultSet retSet = state.executeQuery();
//
//        //実行結果取り出し
//        //カーソルをずらす
//        retSet.next();
//        //count(*)の値取り出し
//        int cnt = retSet.getInt("count(*)");
//        //ログインの判定処理
//        if(cnt==1)
//        {
//
//            System.out.println("login Complete");
//        }
//        else{
//            System.out.println("ERROR!!");
//        }
//
//        //DB接続切断(close処理)
//        conn.close();
//    }//ユーザー情報一覧取得メソッド(終)
//     
//    //退会処理
//    public void Withdrawal(String id, String passwd) throws ClassNotFoundException, SQLException{
//        //ドライバー読み込み
//        Class.forName("org.mariadb.jdbc.Driver");
//        //DB接続（JV22部分書き換え必要）
//        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/d_meganestore?user=root&password=");
//
//        //SQL文作成(メンバーフラグ書き換え)
//        //ユーザ情報一覧取得SQL
//        /*入力されたパスワードがDBにあるパスワードと一致した時のみ退会処理を行う*/
//        String sql = "UPDATE t_tr_users SET is_member = 1 , user_withdrawal_at = ? "
//                + "WHERE users_user_id = ? AND user_password= ?";
//        //ステートメント作成
//        PreparedStatement state = conn.prepareStatement(sql);
//
//        //日付の取得
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//        //現在日付の取得
//        Date date = new Date();
//        String datetime_val = sdf.format(date);
//        //日付格納
//        state.setString(1, datetime_val);
//
//        //パスワード格納
//        state.setString(2, id);
//        state.setString(3, passwd);
//        //SQL実行
//        int retSet = state.executeUpdate();
//
//        //退会処理の判定処理
//        if(retSet == 1)
//        {
//
//            System.out.println("UPDATE Complete");
//        }
//        else{
//            System.out.println("ERROR!!");
//        }
//
//
//        //DB接続切断(close処理)
//        conn.close();
//    }//ユーザー情報一覧取得メソッド(終)
//    
//    //ユーザ一覧の取得
//    public void select() throws ClassNotFoundException, SQLException{
//        //ドライバー読み込み
//        Class.forName("org.mariadb.jdbc.Driver");
//        //DB接続
//        conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/d_meganestore?user=root&password=");
//
//        //SQL文作成(ユーザー情報一覧取得)
//        //ユーザ情報一覧取得SQL
//        String sql = "SELECT users_user_id,user_mail_address,user_password FROM t_tr_users";
//        //ステートメント作成
//        state = conn.prepareStatement(sql);
//        //SQL実行
//        retSet = state.executeQuery();
//
//        //1行ずつ読み込み
//        while(retSet.next()) {
//            //ID表示
//            System.out.println(retSet.getString("users_user_id"));
//           //メールアドレス表示
//            System.out.println(retSet.getString("user_mail_address"));
//            //password表示
//            System.out.println(retSet.getString("user_password"));
//        }
//
//        //DB接続切断(close処理)
//        retSet.close();
//        conn.close();
//    }//ユーザー情報一覧取得メソッド(終)
    
