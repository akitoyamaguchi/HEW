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
    <header>
      <div class="header_logo">
        <h1><img src="logo/try-on3.png" onclick="location.href='index.jsp'"/></h1>
      </div>
      <div class="header_nav_wrapper">
        <nav class="hdr_navigation_wrapper_first">
          <div class="header_navigation">
            <button onclick="location.href='mypage.jsp'">MYPAGE</button>
            <button onclick="location.href='sitemap.jsp'">SITEMAP</button>
            <button onclick="location.href='inquiry.jsp'">SUPPORT</button>
          </div>
        </nav>
        <nav class="hdr_navigation_wrapper_second">
          <button class="header_button_serch" onclick="location.href='search.jsp'"><img src="submit_btn/search.png" /></button>
          <button class="header_button_useradd" onclick="location.href='member_register.jsp'"><img src="submit_btn/shinki.png" /></button>
          <button class="header_button_login" onclick="location.href='login.jsp'"><img src="submit_btn/login.png" /></button>
        </nav>
      </div>
    </header>
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
    <footer>
      <nav class="ftr_navigation_wrapper_first">
        <h2 class="ftr_title_first">取扱商品</h2>
        <ul class="footer_navigation">
          <li><a href="#">メガネ</a></li>
          <li><a href="#">サングラス</a></li>
          <li><a href="#">アイウェア</a></li>
        </ul>
      </nav>
      <nav class="ftr_navigation_wrapper_second">
        <h2 class="ftr_title_second">登録・ログイン</h2>
        <ul class="footer_navigation">
          <li><a href="#">ログイン</a></li>
          <li><a href="#">新規登録</a></li>
        </ul>
      </nav>
      <nav class="ftr_navigation_wrapper_third">
        <h2 class="ftr_title_third">サイトのご利用について</h2>
        <ul class="footer_navigation">
          <li><a href="#">サイトマップ</a></li>
          <li><a href="#">お問合せ</a></li>
        </ul>
      </nav> <small class="cpr">Copyright(C)</small> </footer>
  </div>
</body>

</html>
