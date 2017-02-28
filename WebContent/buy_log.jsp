<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>購入履歴画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/buy_log.css" rel="stylesheet" type="text/css">
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
        <h1 class="search_result_title">購入履歴</h1>
        <h2 class="search_result_number">過去１年間に購入された<span>999</span>件の注文</h2>

        <div class="search_result_contents">
          <div class="buy_days">
            <p><span>購入年月日</span><br />2016/12/31</p>
            <p><span>合計</span><br />￥1,000</p>
          </div>
          <p class="image"><img src="img/a.png" alt="" /></p>
          <div class="product_infomation">
            <p class="product_name">商品名</p>
            <p class="product_description">価格</p>
          </div>
        </div>

        <div class="search_result_contents">
          <div class="buy_days">
            <p><span>購入年月日</span><br />2016/12/31</p>
            <p><span>合計</span><br />￥1,000</p>
          </div>
          <p class="image"><img src="img/a.png" alt="" /></p>
          <div class="product_infomation">
            <p class="product_name">商品名</p>
            <p class="product_description">価格</p>
          </div>
        </div>

        <div class="search_result_contents">
          <div class="buy_days">
            <p><span>購入年月日</span><br />2016/12/31</p>
            <p><span>合計</span><br />￥1,000</p>
          </div>
          <p class="image"><img src="img/a.png" alt="" /></p>
          <div class="product_infomation">
            <p class="product_name">商品名</p>
            <p class="product_description">価格</p>
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
