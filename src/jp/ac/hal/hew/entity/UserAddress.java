package jp.ac.hal.hew.entity;

/**
 * Created by naoaki-sato on 17/02/18.
 */
public class UserAddress {
    private String userMailAddress;
    private int deliveryAddressNumber;
    private String name;
    private String kana;
    private String zipcode;
    private String address;
    private String phoneNum;


    public UserAddress(String userMailAddress, int deliveryAddressNumber,
                        String name, String kana, String zipcode,
                        String address, String phoneNum) {
        this.userMailAddress = userMailAddress;
        this.deliveryAddressNumber = deliveryAddressNumber;
        this.name = name;
        this.kana = kana;
        this.zipcode = zipcode;
        this.address = address;
        this.phoneNum = phoneNum;
    }

    public String getUserMailAddress() {
        return userMailAddress;
    }

    public void setUserMailAddress(String userMailAddress) {
        this.userMailAddress = userMailAddress;
    }

    public int getDeliveryAddressNumber() {
        return deliveryAddressNumber;
    }

    public void setDeliveryAddressNumber(int deliveryAddressNumber) {
        this.deliveryAddressNumber = deliveryAddressNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKana() {
        return kana;
    }

    public void setKana(String kana) {
        this.kana = kana;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }
}
