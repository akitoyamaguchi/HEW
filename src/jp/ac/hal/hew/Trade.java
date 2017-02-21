package jp.ac.hal.hew;

/**
 * Created by naoaki-sato on 17/02/18.
 */
public class Trade {
    private int id;
    private String userMail;
    private String buyAt;
    private int paymentMethod;
    private String paymentNum;
    private String getPaymentOn;
    private String deliveryAddressNum;
    private String dispatchOn;
    private String tradeAdminId;
    private int isComplete;

    public Trade(int id, String userMail, String buyAt,
                 int paymentMethod, String paymentNum,
                 String getPaymentOn, String deliveryAddressNum,
                 String dispatchOn, String tradeAdminId,
                 int isComplete) {
        this.id = id;
        this.userMail = userMail;
        this.buyAt = buyAt;
        this.paymentMethod = paymentMethod;
        this.paymentNum = paymentNum;
        this.getPaymentOn = getPaymentOn;
        this.deliveryAddressNum = deliveryAddressNum;
        this.dispatchOn = dispatchOn;
        this.tradeAdminId = tradeAdminId;
        this.isComplete = isComplete;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public String getBuyAt() {
        return buyAt;
    }

    public void setBuyAt(String buyAt) {
        this.buyAt = buyAt;
    }

    public int getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(int paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getPaymentNum() {
        return paymentNum;
    }

    public void setPaymentNum(String paymentNum) {
        this.paymentNum = paymentNum;
    }

    public String getGetPaymentOn() {
        return getPaymentOn;
    }

    public void setGetPaymentOn(String getPaymentOn) {
        this.getPaymentOn = getPaymentOn;
    }

    public String getDeliveryAddressNum() {
        return deliveryAddressNum;
    }

    public void setDeliveryAddressNum(String deliveryAddressNum) {
        this.deliveryAddressNum = deliveryAddressNum;
    }

    public String getDispatchOn() {
        return dispatchOn;
    }

    public void setDispatchOn(String dispatchOn) {
        this.dispatchOn = dispatchOn;
    }

    public String getTradeAdminId() {
        return tradeAdminId;
    }

    public void setTradeAdminId(String tradeAdminId) {
        this.tradeAdminId = tradeAdminId;
    }

    public int getIsComplete() {
        return isComplete;
    }

    public void setIsComplete(int isComplete) {
        this.isComplete = isComplete;
    }
}
