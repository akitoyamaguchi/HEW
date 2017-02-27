<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>会員購入情報選択画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/member_buy.css" rel="stylesheet" type="text/css">
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
  <article class="member_buy_wrapper">
    <h1 class="member_buy_title">会員購入情報選択</h1>
    <section class="new_add_wrapper">
      <h2 class="max_add">発送先の最大登録数は5件です。</h2>
      <button class="new_shipping" onclick="location.href='#'">発送先の新規登録</button>
    </section>
    <section class="member_shipping">
      <div class="shipping_button_wrapper">
        <div class="member_shipping_right">
          <button class="change">変更</button>
          <button class="delete">削除</button>
        </div>
      </div>
      <div class="member_shipping_wrapper">
        <div class="member_shipping_top">
          <p><span>郵便番号</span><br />160-0023</p>
          <p><span>住所</span><br />東京都新宿区西新宿1-7-3</p>
        </div>
        <div class="member_shipping_middle">
          <p><span>フリガナ</span>ハルタロウ<br /><span>氏名</span>HAL太郎</p>
          <p><span>電話番号</span><br />03-3344-1010</p>
        </div>
      </div>
      <div class="member_shipping_button">
        <button class="use_shipping">この住所を使う</button>
      </div>
    </section>

    <section class="member_shipping">
      <div class="shipping_button_wrapper">
        <div class="member_shipping_right">
          <button class="change">変更</button>
          <button class="delete">削除</button>
        </div>
      </div>
      <div class="member_shipping_wrapper">
        <div class="member_shipping_top">
          <p><span>郵便番号</span><br />160-0023</p>
          <p><span>住所</span><br />東京都新宿区西新宿1-7-3</p>
        </div>
        <div class="member_shipping_middle">
          <p><span>フリガナ</span>ハルタロウ<br /><span>氏名</span>HAL太郎</p>
          <p><span>電話番号</span><br />03-3344-1010</p>
        </div>
      </div>
      <div class="member_shipping_button">
        <button class="use_shipping">この住所を使う</button>
      </div>
    </section>
  </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
