<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@ include file="header.jsp" %>

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
<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
