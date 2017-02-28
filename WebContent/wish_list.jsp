<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>ほしいものリスト画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/wish_list.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">

<style type="text/css">

</style>
</head>
<body>
  <!-- 全体ラッパー -->
<div class="wrapper">
    <!-- ヘッダー //共通項目-->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
    <article class="contents_search_wrapper">
      <section class="search_result">
        <h1 class="search_result_title">ほしいものリスト</h1>

        <div class="search_result_contents">
          <p class="image"><img src="img/a.png" alt="" /></p>
          <div class="product_infomation">
            <p class="product_name">商品名</p>
            <button class="cart_add">カートに追加</button>
            <p class="product_description">価格</p>
            <button class="delete">削除</button>
          </div>
        </div>

        <div class="search_result_contents">
          <p class="image"><img src="img/a.png" alt="" /></p>
          <div class="product_infomation">
            <p class="product_name">商品名</p>
            <button class="cart_add">カートに追加</button>
            <p class="product_description">価格</p>
            <button class="delete">削除</button>
          </div>
        </div>

        <!-- ページジャンプ -->
        <ul class="pages_number">
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">6</a></li>
          <li><a href="#">7</a></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><a href="#">10</a></li>
        </ul>

      </section>
    </article>
    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
