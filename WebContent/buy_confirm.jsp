<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.ac.hal.hew.dao.UserAddressDAO" %>
<%@ page import="jp.ac.hal.hew.entity.UserAddress" %>
<%@ page import="jp.ac.hal.hew.dao.ProductDAO" %>
<%@ page import="jp.ac.hal.hew.entity.Product" %>

<%
		int delId = Integer.valueOf(session.getAttribute("delId").toString() );
		String mail = (String)session.getAttribute("mail");
		int pId = Integer.valueOf(session.getAttribute("productId").toString() );
		
		String[] dispMethod = (String[])session.getAttribute("dispMethodDetails");
		
		ProductDAO pdao = new ProductDAO();
		Product p = pdao.seletById(pId);
		UserAddressDAO uadao = new UserAddressDAO();
		UserAddress ua = uadao.seletById(delId, mail);
%>
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
              氏名 <%= ua.getName() %>
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              フリガナ <%= ua.getKana() %>
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              郵便番号 <%= ua.getZipcode() %>
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              住所 <%= ua.getAddress() %>
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              電話番号 <%= ua.getPhoneNum() %>
            </dd>
        </dl>
        <dl>
          <dt></dt>
            <dd>
              メールアドレス <%= mail %>
            </dd>
        </dl>
        <dl>
          <dt>支払方法</dt>
            <dd>
              代金引換
            </dd>
        </dl>
        <%
        String tmp = "<dl><dt>";
        tmp += "<img src='" + p.getMainImage() + "'/>";
        tmp += "</dt><dd>";
        tmp += "<p>商品名　" + p.getName() + "</p>";
  			tmp += "<p>価格　" + p.getPrice() + "円</p>";
  			tmp += "<p>数量　1個</p>";
  			tmp += "</dd></dl>";
  			out.print(tmp);
        %>
        <dl>
          <dt>配送方法</dt>
            <dd>
             	<%
             		if(dispMethod.length == 1) {
             			out.println("通常配送");
             		} else {
             			%>
             			配送日指定<br>
             			<%= dispMethod[0] %>月<%= dispMethod[1] %>日<%= dispMethod[2] %>時ごろ到着予定
             			<%
             		}
             	%>
            </dd>
        </dl>
      </div>

    </section>

    <div class="btn_kanryou">
          <button class="modoru" onclick="location.href='buy_change.jsp'"><img src="btn/modoru.png" /></button>
          <button class="kanryou" onclick="location.href='buy_complete.jsp'"><img src="btn/kanryou.png" /></button>
    </div>

  </article>


    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>

</body>
</html>
