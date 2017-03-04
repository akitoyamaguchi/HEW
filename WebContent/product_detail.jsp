<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.ac.hal.hew.entity.Product" %>
<%@ page import="jp.ac.hal.hew.entity.Category" %>
<%@ page import="jp.ac.hal.hew.entity.Makers" %>
<%@ page import="jp.ac.hal.hew.entity.ProductImages" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
	Product detail = (Product)request.getAttribute("detail");
	Makers maker = (Makers)request.getAttribute("maker");
	Category category = (Category)request.getAttribute("category");
	ArrayList<ProductImages> apis = (ArrayList<ProductImages>)(request.getAttribute("productImages") );
	ProductImages[] pis = new ProductImages[apis.size()];
	for (int i = 0; i < apis.size(); i++) {
		pis[i] = apis.get(i);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>商品詳細画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/product_ detail.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">

<style type="text/css">

</style>
</head>
<body>
  <!-- 全体ラッパー -->
  <div class="wrapper">
    <!-- ヘッダー -->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
  <article class="product_detail_wrapper">
    <div class="product_detail">


    <!-- 左カラム -->
      <section class="left_column_wrapper">
        <div class="main_pic_wrapper">
          <p class="main_contents_pic"><img src="<%= detail.getMainImage() %>" alt="pic1" /></p>
        </div>
        <div class="sub_pic_wrapper">
          <p class="sub_contents_pic"><img src="<%= pis[0].getPath() %>" alt="pic1" /></p>
          <p class="sub_contents_pic"><img src="<%= pis[1].getPath() %>" alt="pic2" /></p>
          <p class="sub_contents_pic"><img src="<%= pis[2].getPath() %>" alt="pic3" /></p>
          <button class="left_column_btn">COLOR</button>
          <button class="left_column_btn">3D VIEW</button>
        </div>
      </section>
    <!-- 右カラム -->
      <section class="right_column_wrapper">
        <p class="price">PRICE<br /><span>￥</span><%= detail.getPrice() %></p>

        <button class="wish_list" onclick="location.href='wish_list.jsp'">ほしいものリスト</button>

        <button class="cart_add" onclick="location.href='cart.jsp'">カートに入れる</button>

        <button class="try_on" onclick="location.href='try_on.jsp'"><img src="btn/sityaku.png"/></button>

        <button class="buy" onclick="location.href='Method?id=<%= detail.getId() %>'">購入</button>

      </section>
    <!-- 商品情報 -->
      <section class="contents_info_wrapper">
        <div class="contents_info_wrap2">
          <h2 class="contents_info_title">商品情報</h2>
          <ul class="contents_info">
            <dl>
              <dt>商品名</dt>
              <dd><%= detail.getName() %></dd>
            </dl>
            <dl>
              <dt>メーカー</dt>
              <dd><%= maker.getMaker_name() %></dd>
            </dl>
            <dl>
              <dt>サイズ</dt>
              <dd><%= detail.getSize() %></dd>
            </dl>
            <dl>
              <dt>カテゴリー</dt>
              <dd><%= category.getRemarks() %></dd>
            </dl>
            <dl>
              <dt>発売日</dt>
              <dd><%= detail.getReleaseOn() %></dd>
            </dl>
            <dl>
              <dt>商品説明</dt>
              <dd><%= detail.getDetail() %></dd>
            </dl>
          </ul>
        </div>
      </section>
    </div>
  </article>

<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
