<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.ac.hal.hew.entity.UserAddress" %>
<%@ page import="jp.ac.hal.hew.entity.Product" %>
<%
	UserAddress ua = (UserAddress)session.getAttribute("userAddress");
	Product p = (Product)session.getAttribute("product");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>購入情報入力変更可能画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/buy_change.css" rel="stylesheet" type="text/css">
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
        <h1>お届け先住所</h1>
        <%
        out.println("<dl>");
        out.println("<dt>氏名</dt>");
        out.println("<dd>");
        out.println("<p>" + ua.getName() + "</p>");
        out.println("</dd>");
        out.println("</dl>");
        out.println("<dl>");
        out.println("<dt>フリガナ</dt>");
        out.println("<dd>");
        out.println("<p>" + ua.getKana() + "</p>");
        out.println("</dd>");
        out.println("</dl>");
        out.println("<dl>");
        out.println("<dt>郵便番号</dt>");
        out.println("<dd>");
        out.println("<p>" + ua.getZipcode() + "</p>");
        out.println("</dd>");
        out.println("</dl>");
        out.println("<dl>");
        out.println("<dt>住所</dt>");
        out.println("<dd>");
        out.println("<p>" + ua.getAddress() + "</p>");
        out.println("</dd>");
        out.println("</dl>");
        out.println("<dl>");
        out.println("<dt>電話番号</dt>");
        out.println("<dd>");
        out.println("<p>" + ua.getPhoneNum() + "</p>");
        out.println("</dd>");
        out.println("</dl>");
        out.println("<dl>");
        out.println("<dt>メールアドレス</dt>");
        out.println("<dd>");
        out.println("<p>" + session.getAttribute("mail") + "</p>");
        out.println("</dd>");
        out.println("</dl>");
        %>
        <button onclick="location.href='dispatch_change.jsp'">変更</button>
      </div>
      <div class="change_payment">
        <h2>支払い方法</h2>
        <label>代金引換<br /></label><p>(国内配送のみ。代引き手数料がかかります。)</p>
        <button onclick="location.href='payment.jsp?delId=<%= ua.getDeliveryAddressNumber() %>'">変更</button>
      </div>
    </section>

    <section class="change_shipping_wrapper">
      <div class="bottom_contents_wrapper">
        <form class="select_shipping_form" action="SelectShippingForm" method="post">
          <div class="contents">
            <p><img src=<%= p.getMainImage() %> /></p>
            <p class="contents_info"><%= p.getName() %><br><%= p.getPrice() %>
          </div>
          <div class="change_shipping">
            <h1>配送方法</h1>
              <input type="radio" name="credit" id="1st" value="1"  checked/><label for="1st">通常配送</label>
              <input type="radio" name="credit" id="2nd" value="2" /><label for="2nd">配送日時指定便</label>
                <div class="shipping_date_select_wrapper">
                  <label for="shipping_month_select">日にち指定</label>
                    <select name="shipping_month_select" class="shipping_month_select">
                      <option value="01" selected>01月</option>
                      <option value="02">02月</option>
                      <option value="03">03月</option>
                      <option value="04">04月</option>
                      <option value="05">05月</option>
                      <option value="06">06月</option>
                      <option value="07">07月</option>
                      <option value="08">08月</option>
                      <option value="09">09月</option>
                      <option value="10">10月</option>
                      <option value="11">11月</option>
                      <option value="12">12月</option>
                    </select>
                    <select name="shipping_day_select" class="shipping_day_select">
                      <option value="01" selected>01日</option>
                      <option value="02">02日</option>
                      <option value="03">03日</option>
                      <option value="04">04日</option>
                      <option value="05">05日</option>
                      <option value="06">06日</option>
                      <option value="07">07日</option>
                      <option value="08">08日</option>
                      <option value="09">09日</option>
                      <option value="10">10日</option>
                      <option value="11">11日</option>
                      <option value="12">12日</option>
                      <option value="13">13日</option>
                      <option value="14">14日</option>
                      <option value="15">15日</option>
                      <option value="16">16日</option>
                      <option value="17">17日</option>
                      <option value="18">18日</option>
                      <option value="19">19日</option>
                      <option value="20">20日</option>
                      <option value="21">21日</option>
                      <option value="22">22日</option>
                      <option value="23">23日</option>
                      <option value="24">24日</option>
                      <option value="25">25日</option>
                      <option value="26">26日</option>
                      <option value="27">27日</option>
                      <option value="28">28日</option>
                      <option value="29">29日</option>
                      <option value="30">30日</option>
                      <option value="31">31日</option>
                    </select>
                </div>
                <div class="shipping_time_select_wrapper">
                  <label for="shipping_time_select">時間指定</label>
                    <select name="shipping_time_select" class="shipping_time_select">
                      <option value="8-10" selected>08:00~10:00</option>
                      <option value="10-12">10:00~12:00</option>
                      <option value="12-14">12:00~14:00</option>
                      <option value="14-16">14:00~16:00</option>
                      <option value="16-18">16:00~18:00</option>
                      <option value="18-20">18:00~20:00</option>
                      <option value="20-21">20:00~21:00</option>
                    </select>
                </div>
          </div>
          <div class="btn_kakunin">
              <input type="submit" name="act" value="" class="kakunin" >
          </div>
        </form>
      </div>
    </section>
  </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
