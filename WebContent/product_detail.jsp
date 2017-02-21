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
  <article class="product_detail_wrapper">
  <!-- 左カラム -->
    <section class="left_column_wrapper">
      <div class="main_pic_wrapper">
        <p class="main_contents_pic"><img src="img/sample1.jpg" alt="サンプル" /></p>
      </div>
      <div class="sub_pic_wrapper">
        <p class="sub_contents_pic"><img src="img/sample1.jpg" alt="サンプル" /></p>
        <p class="sub_contents_pic"><img src="img/sample2.jpg" alt="サンプル" /></p>
        <p class="sub_contents_pic"><img src="img/sample3.jpg" alt="サンプル" /></p>
        <button class="left_column_btn">COLOR</button>
        <button class="left_column_btn">3D VIEW</button>
      </div>
    </section>
  <!-- 右カラム -->
    <section class="right_column_wrapper">
      <p class="price">PRICE<br /><span>　　￥　</span>5,000</p>

      <button class="wish_list">ほしいものリスト</button>

      <button class="cart_add">カートに入れる</button>

      <button class="try_on"><img src="btn/sityaku.png" /></button>

      <button class="buy">購入</button>

    </section>
  <!-- 商品情報 -->
    <section class="contents_info_wrapper">
      <h2 class="contents_info_title">商品情報</h2>
      <ul class="contents_info">
        <dl>
          <dt>商品名</dt>
          <dd>PL380</dd>
        </dl>
        <dl>
          <dt>品番</dt>
          <dd>123456789</dd>
        </dl>
        <dl>
          <dt>サイズ</dt>
          <dd>MIDDLE</dd>
        </dl>
        <dl>
          <dt>性別</dt>
          <dd>MEN</dd>
        </dl>
        <dl>
          <dt>スタイル</dt>
          <dd>SQUARE</dd>
        </dl>
        <dl>
          <dt>素材</dt>
          <dd>CARBON</dd>
        </dl>
        <dl>
          <dt>商品説明</dt>
          <dd>ああああああああああああああああああああああああああああああああああああああああ<br />
              いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい<br />
              うううううううううううううううううううううううううううううううううううううううう</dd>
        </dl>
      </ul>
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
      </nav>
      <small class="cpr">Copyright(C)</small>
    </footer>
  </div>

</body>
</html>
