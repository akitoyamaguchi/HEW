<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>購入時情報入力確認画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/buy_confirm.css" rel="stylesheet" type="text/css">
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
        <h1><img src="logo/try-on3.png" onclick="location.href='index.html'"/></h1>
      </div>
      <div class="header_nav_wrapper">
        <nav class="hdr_navigation_wrapper_first">
          <div class="header_navigation">
            <button onclick="location.href='mypage.html'">MYPAGE</button>
            <button onclick="location.href='sitemap.html'">SITEMAP</button>
            <button onclick="location.href='inquiry.html'">SUPPORT</button>
          </div>
        </nav>
        <nav class="hdr_navigation_wrapper_second">
          <button class="header_button_serch" onclick="location.href='search.html'"><img src="submit_btn/search.png" /></button>
          <button class="header_button_useradd" onclick="location.href='member_register.html'"><img src="submit_btn/shinki.png" /></button>
          <button class="header_button_login" onclick="location.href='login.html'"><img src="submit_btn/login.png" /></button>
        </nav>
      </div>
    </header>

  <!-- メインコンテンツ -->
  <article class="buy_change_wrapper">
    <section class="change_address_payment_wrapper">
      <div class="change_address">
        <h1>購入情報の確認</h1>
        <h2>以下の内容でよろしければ、「完了」をクリックしてください。</h2>
        <dl>
          <dt>お届け先住所</dt>
            <dd>
              氏名 HAL太郎
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              フリガナ ハルタロウ
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              郵便番号 1600023
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              住所 東京都新宿区西新宿1-7-3
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              電話番号 0333441010
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              メールアドレス nyugaku@Tokyo.hal.ac.jp
            </dd>
        </dl>
        <dl>
          <dt>支払方法</dt>
            <dd>
              代金引換
            </dd>
        </dl>
        <dl>
          <dt><img src="img/a.png" /></dt>
            <dd>
              <p>商品名　カジュアルメガネ</p>
              <p>価格　2,000円</p>
              <p>数量　2個</p>
            </dd>
        </dl>
        <dl>
          <dt>配送方法</dt>
            <dd>
              通常配送
            </dd>
        </dl>
      </div>

    </section>

    <div class="btn_kanryou">
          <button class="modoru" onclick="location.href='buy_change.html'"><img src="btn/modoru.png" /></button>
          <button class="kanryou" onclick="location.href='#'"><img src="btn/kanryou.png" /></button>
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
          <li><a href="login.html">ログイン</a></li>
          <li><a href="member_register.html">新規登録</a></li>
        </ul>
      </nav>
      <nav class="ftr_navigation_wrapper_third">
        <h2 class="ftr_title_third">サイトのご利用について</h2>
        <ul class="footer_navigation">
          <li><a href="sitemap.html">サイトマップ</a></li>
          <li><a href="inquiry.html">お問合せ</a></li>
        </ul>
      </nav>
      <small class="cpr">Copyright(C)</small>
    </footer>
  </div>

</body>
</html>
