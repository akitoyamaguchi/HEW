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
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
  <article class="product_detail_wrapper">
    <div class="product_detail">


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
    </div>
  </article>

<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
