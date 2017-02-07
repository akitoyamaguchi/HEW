/*********************************************************
** 連絡事項
**********************************************************
**********************************************************
** 変更完了しました。
**
** 現状の問題点
** > 正常動作することの確認（きっと行ける）
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
		Class.forName(DB_SETTINGS.DRIVER_CLASS_NAME);	
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
		this.state.close();
		this.conn.close();
	}
	
	// SQL(executeQueryのみ)実行
	public ResultSet exectuteQ(String sql, SqlValueBeans beans) throws SQLException {
		this.state = this.conn.prepareStatement(sql);
		ArrayList<Object> values = beans.getSqlValue();
		
		// プリペーアドステートメントに値をセット
		setPreparedStatement(values);
		
		return state.executeQuery();
	}
	
	// SQL(executeUpdateのみ)実行
	public int executeU(String sql, SqlValueBeans beans) throws SQLException {
		this.state = this.conn.prepareStatement(sql);
		ArrayList<Object> values = beans.getSqlValue();
		
		// プリペーアドステートメントに値をセット
		setPreparedStatement(values);
		
		return state.executeUpdate();
	}
   
	// プリペアードステートメントに値をセット
	private void setPreparedStatement(ArrayList<Object> values) throws SQLException {
		for(int i = 0; i < values.size(); i++) {
			if(values.get(i) instanceof Integer) {
				this.state.setInt(i + 1, ( (Integer)values.get(i) ).intValue() );
			} else if(values.get(i) instanceof String) {
				this.state.setString(i + 1, (String)values.get(i) );
			} else if(values.get(i) instanceof Boolean) {
				this.state.setBoolean(i + 1, (Boolean)values.get(i) );
			}
		}
	}
}
	

