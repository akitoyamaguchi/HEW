<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>決済方法選択画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/payment.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
<script type="text/javascript">
<!--

// -->
</script>
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
  <article class="payment_wrapper">
    <h1 class="payment_title">お支払い方法の選択</h1>
    <section class="payment_credit">
      <div class="payment_credit_label">
        <p>ご登録のクレジットカード</p>
        <p>カード名義人</p>
        <p>有効期限</p>
      </div>
      <form class="credit_form" action="#" method="post">
        <input type="radio" name="credit" id="1st" value="1"  checked/><label for="1st">JCB 下四桁 5555</label><p>HALTARO</p><p>01/2017</p>
        <input type="radio" name="credit" id="2nd" value="2" /><label for="2nd">Visa 下四桁 8888</label><p>HALTARO</p><p>01/2017</p>

      <div class="add_credit_wrapper">
        <button class="add_credit">クレジットカードの追加</button>
      </div>
      <div class="select_credit_btn_wrapper">
        <inpput type="submit" name="" class="select_credit_btn" /></inpput>
        <div class="credit_description">
          <p>※使用するカードを選択して「クレジットカードボタン」を押して下さい。</p>
        </div>
      </div>
      </form>
    </section><!--クレジットカードセクション終了-->

    <section class="credit_possible">
      <h2>以下のクレジットカードがご利用いただけます。</h2>
      <p><img src="img/jcb.gif" alt="jcbカード"></imag></p>
      <p><img src="img/visa.png" alt="visaカード"></imag></p>
      <p><img src="img/mc.jpg" alt="masterカード"></imag></p>
      <p><img src="img/ae.jpg" alt="americanecsepresカード"></imag></p>
    </section>

    <section class="payment_cash">
      <form action="#" method="post">
        <div class="select_cash_btn_wrapper">
          <inpput type="submit" name="" class="select_cash_btn"></inpput>
          <div class="cash_description">
            <p>※代金引換は国内配送のみ。<br />代引手数料がかかります。</p>
          </div>
        </div>
      </form>
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
