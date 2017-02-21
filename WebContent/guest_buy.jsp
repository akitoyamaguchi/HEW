﻿<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>ゲスト購入時情報入力画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/guest_buy.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">

<style type="text/css">

</style>
</head>
<body>
  <!-- 全体ラッパー -->
<div class="wrapper">
    <!-- ヘッダー //共通項目-->
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
    <article class="guest_buy_wrapper">
      <section class="guest_buy">

        <h2 class="guest_buy_title">ゲスト購入</h2>
        <div class="form_wrapper">
          <form action="#" method="post">
            <dl>
              <dt>氏名</dt>
                <dd>
                  <input type="text" size="40" placeholder="氏名を入力" name="address" />
                </dd>
            </dl>
            <dl>
              <dt>フリガナ</dt>
                <dd>
                  <input type="text" size="40" placeholder="フリガナを入力" name="address_con" pattern="^[ァ-ン]+$" title="※カタカタのみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>郵便番号</dt>
                <dd>
                  <input type="text" size="40" placeholder="郵便番号を入力" name="passwd" pattern="^[0-9]+$" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>住所</dt>
                <dd>
                  <input type="text" size="40" placeholder="住所を入力" name="passwd_con" />
                </dd>
            </dl>
            <dl>
              <dt>電話番号</dt>
                <dd>
                  <input type="tel" size="40" placeholder="電話番号を入力" name="passwd_con" pattern="^[0-9]" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>メールアドレス</dt>
                <dd>
                  <input type="email" size="40" placeholder="メールアドレスを入力" name="passwd_con" />
                </dd>
            </dl>
            <div class="btn_next">
                  <input type="submit" name="act" value="" class="next" >
            </div>
          </form>
        </div><!--form_wrapper終了-->

      </section>
    </article>
    <!--フッター　//共通項目-->
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
          <li><a href="login.jsp">ログイン</a></li>
          <li><a href="member_register.jsp">新規登録</a></li>
        </ul>
      </nav>
      <nav class="ftr_navigation_wrapper_third">
        <h2 class="ftr_title_third">サイトのご利用について</h2>
        <ul class="footer_navigation">
          <li><a href="sitemap.jsp">サイトマップ</a></li>
          <li><a href="inquiry.jsp">お問合せ</a></li>
        </ul>
      </nav>
      <small class="cpr">Copyright(C)</small>
    </footer>
</div>

</body>
</html>
