/*********************************************************
** 連絡事項
**********************************************************
**********************************************************
** 手の空いている方はご協力おねがいします。
**
** 現状の問題点
** > 正常動作することの確認 。
**********************************************************/
/**********************************************************
**P.S.
** 変更がかかる恐れがある部分は別途DB_SETTINGファイルを用いて定数化しています。
**********************************************************/

package jp.ac.hal.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jp.ac.hal.hew.UserInfoBean;

public class Dao {
	Connection conn;
	ResultSet resSet;
	PreparedStatement state;
	
	// DBドライバーの読み込み
	public Dao() throws ClassNotFoundException {
		Class.forName("org.mariadb.jdbc.Driver");	
	}
	
	// コネクションの確立
	public void connect() throws SQLException {
		this.conn = DriverManager.getConnection(
				"jdbc:mariadb//"
				+ DB_SETTINGS.HOST_NAME + "/d_meganestore?user="
				+ DB_SETTINGS.CONTROL_USER_NAME + "&password="
				+ DB_SETTINGS.CONTROL_USER_PASS);
	}
	
	//コネクションの破棄
	public void killConnetcion() throws SQLException {
		// resSetが破棄されていない場合は破棄する
		if(!this.resSet.isClosed() ) {
			this.resSet.close();
		}
		this.conn.close();
	}
	
	// SQL(executeQueryのみ)実行
	public ResultSet exectuteQ(String sql, SqlValueBeans beans) throws SQLException {
		this.state = this.conn.prepareStatement(sql);
		ArrayList<Object> values = beans.getSqlValue();
		
		for(int i = 0; i < values.size(); i++) {
			if(values.get(i) instanceof Integer) {
				this.state.setInt(i + 1, ( (Integer)values.get(i) ).intValue() );
			} else if(values.get(i) instanceof String) {
				this.state.setString(i + 1, (String)values.get(i) );
			} else if(values.get(i) instanceof Boolean) {
				this.state.setBoolean(i + 1, (Boolean)values.get(i) );
			}
		}

		return state.executeQuery();
	}
	
	// SQL(executeUpdateのみ)実行
	public int executeU(String sql, SqlValueBeans beans) throws SQLException {
		this.state = this.conn.prepareStatement(sql);
		ArrayList<Object> values = beans.getSqlValue();
		
		for(int i = 0; i < values.size(); i++) {
			if(values.get(i) instanceof Integer) {
				this.state.setInt(i + 1, ( (Integer)values.get(i) ).intValue() );
			} else if(values.get(i) instanceof String) {
				this.state.setString(i + 1, (String)values.get(i) );
			} else if(values.get(i) instanceof Boolean) {
				this.state.setBoolean(i + 1, (Boolean)values.get(i) );
			}
		}
		
		return state.executeUpdate();
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
    
}
