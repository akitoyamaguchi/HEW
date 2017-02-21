<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="google" value="notranslate">
  <title>サイトマップ画面</title>
  <link href="css/reset.css" rel="stylesheet" type="text/css">
  <link href="css/input.css" rel="stylesheet" type="text/css">
  <link href="css/sitemap.css" rel="stylesheet" type="text/css">
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
    <article class="sitemap_wrapper">
     <h2>サイトマップ</h2>
     <section class="sitemap_content">
      <div class="list_box">
        <h3>商品について</h3>
          <dl>
            <dt><a href="#">メガネ</a></dt>
            <dt><a href="#">サングラス</a></dt>
            <dt><a href="#">アイウェア</a></dt>
          </dl>
      </div>
      <div class="list_box">
        <h3>会員登録・ログイン</h3>
          <dl>
            <dt><a href="#">ログイン</a></dt>
            <dt><a href="#">新規登録</a></dt>
          </dl>
      </div>
      <div class="list_box">
        <h3>その他の項目</h3>
          <dl>
            <dt><a href="#">商品検索</a></dt>
            <dt><a href="#">メガネの試着</a></dt>
            <dt><a href="#">お問い合わせ</a></dt>
          </dl>
      </div>
      </section>
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
