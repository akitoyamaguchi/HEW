package jp.ac.hal.hew;

/**********************************************
** ユーザ情報（ID、メールアドレス、パスワード）用のビーンズ
***********************************************/

public class UserInfoBean {
	private String userId;
	private String userMail;
	private String userPass;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	
	
}
