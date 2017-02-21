<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>カード情報入力画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/card_input.css" rel="stylesheet" type="text/css">
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
    <article class="card_input_wrapper">
      <section class="card_input">

        <h2 class="card_input_title">クレジットカードの登録</h2>
        <div class="form_wrapper">
          <form action="#" method="post">
            <dl>
              <dt>クレジットカードの種類</dt>
                <dd>
                  <select name="card_select" class="card_select">
                    <option value="JCB" selected>JCB</option>
                    <option value="Vasa">Visa</option>
                    <option value="MasterCard">MasterCard</option>
                    <option value="AmericanExpress">AmericanExpress</option>
                  </select>
                </dd>
            </dl>
            <dl>
              <dt>カード名義人（半角ローマ字）</dt>
                <dd>
                  <input type="text" size="40" placeholder="カード名義人を入力" name="address_con" pattern="^[a-z]+[A-Z]+$" title="※カタカタのみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>カード番号</dt>
                <dd>
                  <input type="text" size="40" placeholder="カード番号を入力" name="card_number" pattern="^[0-9]+$" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>有効期限</dt>
                <dd class="deadline_select">
                  <select name="card_select" class="deadline_select">
                    <option value="01" selected>01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                  </select>
                  <select name="card_select" class="deadline_select">
                    <option value="2017" selected>2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                  </select>
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
