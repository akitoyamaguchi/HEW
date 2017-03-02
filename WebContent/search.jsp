<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.ac.hal.hew.Product" %>
<%@ page import="java.util.ArrayList" %>
<%
	ArrayList<Product> products = (ArrayList<Product>)request.getAttribute("products");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>商品検索画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/search.css" rel="stylesheet" type="text/css">
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
    <article class="contents_search_wrapper">
      <section class="cotents_search">

        <h1 class="cotents_search_title">詳細検索</h1>
        <div class="form_wrapper">
          <form action="ProductDisplay" method="post">
            <dl>
              <dt>商品名</dt>
                <dd>
                  <input type="text" size="40" placeholder="商品名を入力" name="address_con" />
                </dd>
            </dl>
            <dl>
              <dt>カテゴリ</dt>
                <dd>
                  <select name="category_select" class="category_select">
                    <option value="all" selected>すべてのカテゴリ</option>
                    <option value="WOMEN">女性向け</option>
                    <option value="MEN">男性向け</option>
                    <option value="no_frame">フレーム無し</option>
                    <option value="no_top_frame">上フレーム無し</option>
                    <option value="no_bottom_frame">下フレーム無し</option>
                  </select>
                </dd>
            </dl>
            <dl>
              <dt>メーカー</dt>
                <dd>
                  <select name="category_select" class="category_select">
                    <option value="all" selected>すべてのメーカー</option>
                    <option value="Ray-Ban">レイバン</option>
                    <option value="CHANEL">シャネル</option>
                    <option value="OLIVER_PEOPLES">オリバーピープルズ</option>
                    <option value="TOM_FORD">トムフォード</option>
                    <option value="Oh_My_Glasses_TOKYO">Oh My Glasses TOKYO</option>
                  </select>
                </dd>
            </dl>
            <dl>
              <dt>金額</dt>
                <dd class="deadline_select">
                  <input type="text" size="40" placeholder="金額の最低値を入力" name="low_price" pattern="^[0-9]+$" title="※数字のみ入力できます"/>
                  <label>～</label>
                  <input type="text" size="40" placeholder="金額の最大値を入力" name="high_price" pattern="^[0-9]+$" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <input type="radio" name="credit" id="1st" value="1"  checked/><label for="1st">商品ランキング</label>
            <input type="radio" name="credit" id="2nd" value="2" /><label for="2nd">新着商品</label>
            <div class="btn_search">
                <input type="submit" name="search" value="" class="search" >
            </div>
          </form>
        </div><!--form_wrapper終了-->
      </section>
<%
        if(products == null) {
  				// 商品不在の表示
        } else {
        	out.println("<section class=\"search_result\">");
        	out.println("<h1 class=\"search_result_title\">サイト内検索結果</h1>");
   				out.println("<h2 class=\"search_result_number\"><span>\"\"</span>の検索結果は<span>" + products.size() + "</span>件です。</h2>");
   				
	        for(Product p: products) {
	        	out.println("<div class=\"search_result_contents\">");
	        	out.println("<p class=\"image\"><a href=\"productDtail?id=" + p.getId() + "\"><img src=\"" + p.getMainImage() + "\" alt=\"" + p.getName() + "\" /></a></p>");
	        	out.println("<div class=\"product_infomation\">");
	        	out.println("<p class=\"product_name\">" + p.getName() + "</p>");
	        	out.println("<p class=\"product_description\">" + p.getDetail() + "</p>");
	        	out.println("</div>");
	        	out.println("</div>");
	        }
	        
	        out.println("</section>");
        }
%>

        <!-- ページジャンプ -->
<!--         <ul class="pages_number">
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">6</a></li>
          <li><a href="#">7</a></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><a href="#">10</a></li>
        </ul> -->
    </article>
    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
