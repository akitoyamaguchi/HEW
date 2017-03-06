<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.ac.hal.hew.dao.ProductDAO" %>
<%@ page import="jp.ac.hal.hew.entity.Product" %>
<%@ page import="java.util.ArrayList" %>
    
<%
	ProductDAO pdao = new ProductDAO();
	ArrayList<Product> ap = pdao.select();
%>
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
      <h1 class="main_visual"><img src="<%= ap.get(1).getMainImage() %>" alt="メインビジュアル" /></h1>
    </section>
    <!-- 右カラム -->
    <section class="right_column_wrapper">
      <nav>
        <ul class="right_navigation">
          <h2 class="right_column_title">RANKING</h2>
          <li class="right_navigation_li"><img src="<%= ap.get(1).getMainImage() %>" alt="サンプル" />
          <p><span>1st</span><br /><%= ap.get(1).getName() %><br /><%= ap.get(1).getPrice() %></p></li>
          <li class="right_navigation_li"><img src="<%= ap.get(2).getMainImage() %>" alt="サンプル" />
          <p><span>2nd</span><br /><%= ap.get(2).getName() %><br /><%= ap.get(2).getPrice() %></p></li>
          <li class="right_navigation_li"><img src="<%= ap.get(3).getMainImage() %>" alt="サンプル" />
          <p><span>3rd</span><br /><%= ap.get(3).getName() %><br /><%= ap.get(3).getPrice() %></p></li>
        </ul>
      </nav>
    </section>
    <!-- 新商品 -->
    <section class="new_contents_wrapper">
      <h2 class="new_contents_title">NEW</h2>
      <!-- <hr class="new_contents_hr_bottom"> -->
      <ul class="new_contents">
        <li><img src="<%= ap.get(1).getMainImage() %>" alt="サンプル" /><p><%= ap.get(1).getName() %><br /><%= ap.get(1).getPrice() %></p></li>
        <li><img src="<%= ap.get(2).getMainImage() %>" alt="サンプル" /><p><%= ap.get(2).getName() %><br /><%= ap.get(2).getPrice() %></p></li>
        <li><img src="<%= ap.get(3).getMainImage() %>" alt="サンプル" /><p><%= ap.get(3).getName() %><br /><%= ap.get(3).getPrice() %></p></li>
        <li><img src="<%= ap.get(4).getMainImage() %>" alt="サンプル" /><p><%= ap.get(4).getName() %><br /><%= ap.get(4).getPrice() %></p></li>
      </ul>
      <!-- <hr class="new_contents_hr_bottom"> -->
    </section>
  </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>
</body>
</html>
