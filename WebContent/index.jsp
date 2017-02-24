<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>top画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">
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
  <article class="index_wrapper">
    <!-- 左カラム -->
    <section class="left_column_wrapper">
      <nav>
        <ul class="left_navigation">
          <li class="left_navigation_li">メガネ</li>
          <li class="left_navigation_li">サングラス</li>
          <li class="left_navigation_li">アイウェア</li>
        </ul>
      </nav>
    </section>
    <!-- 中央カラム -->
    <section class="main_column">
      <h1 class="main_visual"><img src="img/a.png" alt="メインビジュアル" /></h1>
    </section>
    <!-- 右カラム -->
    <section class="right_column_wrapper">
      <nav>
        <ul class="right_navigation">
          <h2 class="right_column_title">RANKING</h2>
          <li class="right_navigation_li"><img src="img/sample2.jpg" alt="サンプル" />
          <p><span>1st</span><br />商品名<br />価格</p></li>
          <li class="right_navigation_li"><img src="img/sample2.jpg" alt="サンプル" />
          <p><span>2nd</span><br />商品名<br />価格</p></li>
          <li class="right_navigation_li"><img src="img/sample2.jpg" alt="サンプル" />
          <p><span>3rd</span><br />商品名<br />価格</p></li>
        </ul>
      </nav>
    </section>
    <!-- 新商品 -->
    <section class="new_contents_wrapper">
      <h2 class="new_contents_title">NEW</h2>
      <!-- <hr class="new_contents_hr_bottom"> -->
      <ul class="new_contents">
        <li><img src="img/sample2.jpg" alt="サンプル" /><p>商品名<br />価格</p></li>
        <li><img src="img/sample2.jpg" alt="サンプル" /><p>商品名<br />価格</p></li>
        <li><img src="img/sample2.jpg" alt="サンプル" /><p>商品名<br />価格</p></li>
        <li><img src="img/sample2.jpg" alt="サンプル" /><p>商品名<br />価格</p></li>
      </ul>
      <!-- <hr class="new_contents_hr_bottom"> -->
    </section>
  </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>
</body>
</html>
