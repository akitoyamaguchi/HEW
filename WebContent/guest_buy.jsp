<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>ゲスト購入時情報入力画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/guest_buy.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">

<style type="text/css">

</style>
</head>
<body>
  <!-- 全体ラッパー -->
<div class="wrapper">
    <!-- ヘッダー //共通項目-->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
    <article class="guest_buy_wrapper">
      <section class="guest_buy">

        <h2 class="guest_buy_title">ゲスト購入</h2>
        <div class="form_wrapper">
          <form action="#" method="post">
            <dl>
              <dt>氏名</dt>
                <dd>
                  <input type="text" size="40" placeholder="氏名を入力" name="address" />
                </dd>
            </dl>
            <dl>
              <dt>フリガナ</dt>
                <dd>
                  <input type="text" size="40" placeholder="フリガナを入力" name="address_con" pattern="^[ァ-ン]+$" title="※カタカタのみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>郵便番号</dt>
                <dd>
                  <input type="text" size="40" placeholder="郵便番号を入力" name="passwd" pattern="^[0-9]+$" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>住所</dt>
                <dd>
                  <input type="text" size="40" placeholder="住所を入力" name="passwd_con" />
                </dd>
            </dl>
            <dl>
              <dt>電話番号</dt>
                <dd>
                  <input type="tel" size="40" placeholder="電話番号を入力" name="passwd_con" pattern="^[0-9]" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>メールアドレス</dt>
                <dd>
                  <input type="email" size="40" placeholder="メールアドレスを入力" name="passwd_con" />
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
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
