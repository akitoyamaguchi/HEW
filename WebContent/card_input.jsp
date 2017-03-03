<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@ include file="header.jsp" %>

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
                  <input type="text" size="40" placeholder="カード名義人を入力" name="address_con" pattern="^[a-zA-Z]+$" title="※ローマ字のみ入力できます"/>
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
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
