<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.ac.hal.hew.Product" %>
<%@ page import="java.util.ArrayList" %>
<%
	ArrayList<Product> products = (ArrayList<Product>)request.getAttribute("products");
	out.println();
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="google" value="notranslate">
  <title>商品一覧画面</title>
  <link href="css/reset.css" rel="stylesheet" type="text/css">
  <link href="css/product_list.css" rel="stylesheet" type="text/css">
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
    <article>
      <!-- 商品表示ラッパー -->
      <div class="box_wrapper">
        <!-- 商品単一ボックス -->
        <%
        if(products == null) {
  				// 商品不在の表示
        } else {
	        for(Product p: products) {
	        	out.println("<section class=\"box_item\">");
	        	out.println("<div class=\"image_wrapper\">");
	        	out.println("<a href=\"product_detail.jsp\"><img src=\"" + p.getMainImage()+ "\" alt=\" " + p.getName() + " \" /></a>");
	        	out.println("</div>");
	        	out.println("<h1>" + p.getName() + "</h1>");
	        	out.println("<p>" +p.getPrice()+ "<p>");
	        	out.println("</section>");
	        }
        }
        %>

        <section class="box_item">
            <div class="image_wrapper">
              <a href="#"><img src="img/a.png" alt="" /></a>
            </div>
          <h1>商品名2</h1>
          <p>値段</p>
        </section>
      </div>

      <!-- ページジャンプ -->
      <ul class="pages_number">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
      </ul>
    </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>
</body>

</html>
