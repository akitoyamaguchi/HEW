<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>商品検索画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/search.css" rel="stylesheet" type="text/css">
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
    <article class="contents_search_wrapper">
      <section class="cotents_search">

        <h1 class="cotents_search_title">詳細検索</h1>
        <div class="form_wrapper">
          <form action="#" method="post">
            <dl>
              <dt>商品名</dt>
                <dd>
                  <input type="text" size="40" placeholder="商品名を入力" name="address_con" />
                </dd>
            </dl>
            <dl>
              <dt>カテゴリ</dt>
                <dd>
                  <select name="category_select" class="category_select">
                    <option value="all" selected>すべてのカテゴリ</option>
                    <option value="WOMEN">女性向け</option>
                    <option value="MEN">男性向け</option>
                    <option value="no_frame">フレーム無し</option>
                    <option value="no_top_frame">上フレーム無し</option>
                    <option value="no_bottom_frame">下フレーム無し</option>
                  </select>
                </dd>
            </dl>
            <dl>
              <dt>メーカー</dt>
                <dd>
                  <select name="category_select" class="category_select">
                    <option value="all" selected>すべてのメーカー</option>
                    <option value="Ray-Ban">レイバン</option>
                    <option value="CHANEL">シャネル</option>
                    <option value="OLIVER_PEOPLES">オリバーピープルズ</option>
                    <option value="TOM_FORD">トムフォード</option>
                    <option value="Oh_My_Glasses_TOKYO">Oh My Glasses TOKYO</option>
                  </select>
                </dd>
            </dl>
            <dl>
              <dt>金額</dt>
                <dd class="deadline_select">
                  <input type="text" size="40" placeholder="金額の最低値を入力" name="low_price" pattern="^[0-9]+$" title="※数字のみ入力できます"/>
                  <label>～</label>
                  <input type="text" size="40" placeholder="金額の最大値を入力" name="high_price" pattern="^[0-9]+$" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <input type="radio" name="credit" id="1st" value="1"  checked/><label for="1st">商品ランキング</label>
            <input type="radio" name="credit" id="2nd" value="2" /><label for="2nd">新着商品</label>
            <div class="btn_search">
                <input type="submit" name="search" value="" class="search" >
            </div>
          </form>
        </div><!--form_wrapper終了-->
      </section>
      <section class="search_result">
        <h1 class="search_result_title">サイト内検索結果</h1>
        <h2 class="search_result_number">  <span>""</span>の検索結果は<span>999</span>件です。</h2>

        <div class="search_result_contents">
          <p class="image"><img src="img/a.png" alt="" /></p>
          <div class="product_infomation">
            <p class="product_name">商品名</p>
            <p class="product_description">商品説明</p>
          </div>
        </div>

        <!-- ページジャンプ -->
        <ul class="pages_number">
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">6</a></li>
          <li><a href="#">7</a></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><a href="#">10</a></li>
        </ul>

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
