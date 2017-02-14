package jp.ac.hal.hew;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.ac.hal.db.Dao;
import jp.ac.hal.db.SqlValueBeans;

/**
 * Servlet implementation class UserAdd
 */
@WebServlet("/UserAdd")
public class UserAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
        //リクエストの文字コード設定
        request.setCharacterEncoding("UTF-8");
        //エラーフラグ設定
        boolean boolErrFlg = false;
        //エラーコード
        String strErr="";


        //登録処理
        if(request.getParameter("REGIST")!=null){
          //確認ボタン押下処理
          //入力されたメールアドレスとパスワードの取得
          //確認用アドレスとパスワードは与えられていない
          String strAdd = request.getParameter("address");
          //String strAddCon = request.getParameter("address_con");
          String strPasswd = request.getParameter("passwd");
          //String strPasswdCon = request.getParameter("passwd_con");
          
          //パスワードのハッシュ化(ソルトは空文字)
          String hashPass = PasswordUtil.getSafetyPassword(strPasswd, "");
          
          try {
        	  HewDb db = new HewDb();
        	  db.userAdd(strAdd, hashPass);
          }catch(ClassNotFoundException cnfe) {
        	  //　未実装
          }catch(SQLException seqle) {
        	  // 未実装
          }
          
          //入力確認は確認用のアドレスとパスワードを取得できないので削除
//          //入力チェック（メールアドレスとパスワードの入力チェック）
//          if(strAdd !=null && !strAdd.isEmpty()
//            && strAddCon !=null && !strAddCon.isEmpty()
//            && strPasswd !=null && !strPasswd.isEmpty()
//            && strPasswdCon !=null && !strPasswdCon.isEmpty()){
//              //再入力の一致確認
//              if(strAdd.equals(strAddCon)){
//                  if(strPasswd.equals(strPasswdCon)){
//                      //DAOへ飛ばす処理をここに書く
//                  }else if(!(strPasswd.equals(strPasswdCon))){
//                      /*パスワードの再入力が不一致な為
//                       *エラーを飛ばす処理をここに書く*/
//                  }
//              }else if(!(strAdd.equals(strAddCon))){
//                  /*メールアドレスの再入力が不一致な為
//                   *エラーを飛ばす処理をここに書く*/
//              }
//          }//入力チェック（終）
        }//登録処理（終）

        //UserAddなんだから、ログイン処理はいらない
        //ログイン処理
//        if(request.getParameter("REGIST")!=null){
//          //ログインボタン押下処理
//          //入力されたメールアドレスとパスワードの取得
//          String strAdd = request.getParameter("address");
//          String strPasswd = request.getParameter("passwd");
//          //入力チェック（メールアドレスとパスワードの入力チェック）
//          if(strAdd !=null && !strAdd.isEmpty()
//            && strPasswd !=null && !strPasswd.isEmpty()){
//              /* 入力チェック完了後
//               * DAOに飛ばす処理を書く*/
//          }//入力チェック（終）
//        }//ログイン処理(終)



        //転送処理
        String strDisp;
        if(boolErrFlg){
            //処理の失敗時（Error.jspに転送）
            strDisp = "Error.jsp";
            //エラーコードをリクエストに設定
            request.setAttribute("Err", strErr);
        }
        else{
            //処理の成功時（Result.jspに転送）
            strDisp = "Result.jsp";
        }
        //転送
        RequestDispatcher Disp = request.getRequestDispatcher(strDisp);
        Disp.forward(request, response);

	}

}
