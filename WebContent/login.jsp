<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>ログイン画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/login.css" rel="stylesheet" type="text/css">
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
    <article class="login_wrapper">
      <section class="left_column_wrapper">
        <h2 class="m_r_title">既に会員登録されているお客様</h2>
        <form action="UserLogin" method="post">
          <div class="form_wrapper">
            <dl>
              <dt>メールアドレス</dt>
                <dd>
                  <input type="email" size="40" placeholder="メールアドレスを入力" name="address" />
                </dd>
            </dl>
            <dl>
              <dt>パスワード</dt>
                <dd>
                  <input type="password" size="40" placeholder="パスワードを入力" name="passwd" />
                </dd>
            </dl>

          </div>
          <div class="btn_confirmation">
              <input type="submit" name="act1" value="" class="login">
          </div>
        </form>
      </section>

      <section class="right_column_wrapper">
        <h2 class="m_r_title">新規会員登録をされるお客様</h2>
          <div class="form_wrapper">
            <p>初めてご利用になるお客様は「新規会員登録」</br>ボタンをクリックし、会員登録を行ってください。</p>
          </div>

          <div class="btn_confirmation2">
              <button class="new_add" onclick="location.href='member_register.jsp'"></button>
          </div>
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
