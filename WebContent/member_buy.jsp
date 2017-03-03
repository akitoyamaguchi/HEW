<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.ac.hal.hew.UserAddressDAO" %>
<%@ page import="jp.ac.hal.hew.UserAddress" %>
<%@ page import="java.util.ArrayList" %>
<%
	UserAddressDAO uadao = new UserAddressDAO();
	ArrayList<UserAddress> ua = uadao.select(String.valueOf(session.getAttribute("mail") ) );
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>会員購入情報選択画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/member_buy.css" rel="stylesheet" type="text/css">
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
  <article class="member_buy_wrapper">
    <h1 class="member_buy_title">会員購入情報選択</h1>
    <section class="new_add_wrapper">
      <h2 class="max_add">発送先の最大登録数は5件です。</h2>
      <button class="new_shipping" onclick="location.href='dispatch_add.jsp'">発送先の新規登録</button>
    </section>
    <%
    	for(UserAddress u: ua) {
    			out.println("<section class='member_shipping'>");
    			out.println("<div class='shipping_button_wrapper'>");
    			out.println("<div class='member_shipping_right'>");
    			out.println("<button class='change'>変更</button>");
    			out.println("<button class='delete'>削除</button>");
    			out.println("</div>");
    			out.println("</div>");
    			out.println("<div class='member_shipping_wrapper'>");
    			out.println("<div class='member_shipping_top'>");
    			out.println("<p><span>郵便番号</span><br />" + u.getZipcode() + "</p>");
    			out.println("<p><span>住所</span><br />" + u.getAddress() + "</p>");
    			out.println("</div>");
    			out.println("<div class='member_shipping_middle'>");
    			out.println("<p><span>フリガナ</span>" + u.getKana() + "<br><span>氏名</span>" + u.getName() + "</p>");
    			out.println("<p><span>電話番号</span><br>" + u.getPhoneNum() + "</p>");
    			out.println("</div>");
    			out.println("</div>");
    			out.println("<div class='member_shipping_button'>");
    			out.println("<button onclick=\"location.href=\'payment.jsp?delId=" + u.getDeliveryAddressNum() + "\'\" class='use_shipping'>この住所を使う</button>");
    			out.println("</div>");
    			out.println("</section>");
    	}
    	%>    
    
  </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
