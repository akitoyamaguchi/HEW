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
<%@ include file="header.jsp" %>

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
          <button class="modoru" onclick="location.href='buy_change.jsp'"><img src="btn/modoru.png" /></button>
          <button class="kanryou" onclick="location.href='#'"><img src="btn/kanryou.png" /></button>
    </div>

  </article>


    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
