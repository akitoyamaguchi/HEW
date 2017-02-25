<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="google" value="notranslate">
  <title>商品一覧画面</title>
  <link href="css/reset.css" rel="stylesheet" type="text/css">
  <link href="css/product_list.css" rel="stylesheet" type="text/css">
  <link href="css/header_footer.css" rel="stylesheet" type="text/css">
  <style type="text/css">

  </style>
</head>

<body>
  <!-- 全体ラッパー -->
  <div class="wrapper">
    <!-- ヘッダー -->
    <header>
<%@ include file="header.jsp" %>
    <!-- メインコンテンツ -->
    <article>
      <!-- 商品表示ラッパー -->
      <div class="box_wrapper">
        <!-- 商品単一ボックス -->
        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名1</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名2</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名3</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名4</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名5</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名6</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名7</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名8</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名9</h1>
          <p>値段</p>
        </section>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名10</h1>
          <p>値段</p>
        </section>
      </div>

      <!-- ページジャンプ -->
      <ul class="pages_number">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
      </ul>
    </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>
</body>

</html>
