package jp.ac.hal.hew;

/**
 * Created by naoaki-sato on 17/02/18.
 */
public class Product {
    private int id;
    private String name;
    private String detail;
    private int maker;
    private int category;
    private String releaseOn;
    private int price;
    private String modelPath;
    private int frameColor;
    private int lensColor;
    private int lensType;
    private String size;

    public Product(int id, String name, String detail, int maker, int category,
                   String releaseOn, int price, String modelPath,
                   int frameColor, int lensColor, int lensType, String size) {
        this.id = id;
        this.name = name;
        this.detail = detail;
        this.maker = maker;
        this.category = category;
        this.releaseOn = releaseOn;
        this.price = price;
        this.modelPath = modelPath;
        this.frameColor = frameColor;
        this.lensColor = lensColor;
        this.lensType = lensType;
        this.size = size;
    }

    public Product(String name, String detail, int maker, int category,
                   String releaseOn, int price, String modelPath,
                   int frameColor, int lensColor, int lensType,
                   String size) {
        this.name = name;
        this.detail = detail;
        this.maker = maker;
        this.category = category;
        this.releaseOn = releaseOn;
        this.price = price;
        this.modelPath = modelPath;
        this.frameColor = frameColor;
        this.lensColor = lensColor;
        this.lensType = lensType;
        this.size = size;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDetail() {
        return detail;
    }
    public void setDetail(String detail) {
        this.detail = detail;
    }
    public int getMaker() {
        return maker;
    }
    public void setMaker(int maker) {
        this.maker = maker;
    }
    public int getCategory() {
        return category;
    }
    public void setCategory(int category) {
        this.category = category;
    }
    public String getReleaseOn() {
        return releaseOn;
    }
    public void setReleaseOn(String releaseOn) {
        this.releaseOn = releaseOn;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public String getModelPath() {
        return modelPath;
    }
    public void setModelPath(String modelPath) {
        this.modelPath = modelPath;
    }
    public int getFrameColor() {
        return frameColor;
    }
    public void setFrameColor(int frameColor) {
        this.frameColor = frameColor;
    }
    public int getLensColor() {
        return lensColor;
    }
    public void setLensColor(int lensColor) {
        this.lensColor = lensColor;
    }
    public int getLensType() {
        return lensType;
    }
    public void setLensType(int lensType) {
        this.lensType = lensType;
    }
    public String getSize() {
        return size;
    }
    public void setSize(String size) {
        this.size = size;
    }
}
