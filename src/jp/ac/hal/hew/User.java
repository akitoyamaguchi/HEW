package jp.ac.hal.hew;

/**
 * Created by naoaki-sato on 17/02/18.
 */
public class User {
    private String mail;
    private String passwd;
    private Boolean isMember;
    private String withdrawalAt;

    public User(String mail, String passwd, Boolean isMember, String withdrawalAt) {
        this.mail = mail;
        this.passwd = passwd;
        this.isMember = isMember;
        this.withdrawalAt = withdrawalAt;
    }
    public User(String mail, String passwd, Boolean isMember) {
		this.mail = mail;
		this.passwd = passwd;
		this.isMember = isMember;
	}

	public String getMail() {
        return mail;
    }
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getPasswd() {
        return passwd;
    }
    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
    public Boolean getMember() {
        return isMember;
    }
    public void setMember(Boolean member) {
        isMember = member;
    }
    public String getWithdrawalAt() {
        return withdrawalAt;
    }
    public void setWithdrawalAt(String withdrawalAt) {
        this.withdrawalAt = withdrawalAt;
    }


}
