<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="google" value="notranslate">
  <title>マイページ画面</title>
  <link href="css/reset.css" rel="stylesheet" type="text/css">
  <link href="css/input.css" rel="stylesheet" type="text/css">
  <link href="css/mypage.css" rel="stylesheet" type="text/css">
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
    <article class="mypage_wrapper">
    <h2>マイページ</h2>
     <div class="item_box_wrapper">
      <section class="item_box flex_row acount_setting">
        <p>アカウント設定</p>
        <div class="flex_column">
          <a href="#">メールアドレス変更</a>
          <a href="#">パスワード変更</a>
          <a href="#">退会</a>
        </div>
      </section>
      <section class="item_box flex_row bought_history">
        <p>購入履歴</p>
        <div class="flex_column">
          <a href="#">購入履歴</a>
        </div>
      </section>
      <section class="item_box flex_row wish_list">
        <p>ほしいものリスト</p>
        <div class="flex_column">
          <a href="#">ほしいものリスト</a>
        </div>
      </section>
      <section class="item_box flex_row general_shipment">
        <p>発送先関連</p>
        <div class="flex_column">
          <a href="#">発送先登録・変更・削除</a>
        </div>
      </section>
      </div>
    </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>
</body>

</html>
