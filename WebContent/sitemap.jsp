<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="google" value="notranslate">
  <title>サイトマップ画面</title>
  <link href="css/reset.css" rel="stylesheet" type="text/css">
  <link href="css/input.css" rel="stylesheet" type="text/css">
  <link href="css/sitemap.css" rel="stylesheet" type="text/css">
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
    <article class="sitemap_wrapper">
     <h2>サイトマップ</h2>
     <section class="sitemap_content">
      <div class="list_box">
        <h3>商品について</h3>
          <dl>
            <dt><a href="#">メガネ</a></dt>
            <dt><a href="#">サングラス</a></dt>
            <dt><a href="#">アイウェア</a></dt>
          </dl>
      </div>
      <div class="list_box">
        <h3>会員登録・ログイン</h3>
          <dl>
            <dt><a href="#">ログイン</a></dt>
            <dt><a href="#">新規登録</a></dt>
          </dl>
      </div>
      <div class="list_box">
        <h3>その他の項目</h3>
          <dl>
            <dt><a href="#">商品検索</a></dt>
            <dt><a href="#">メガネの試着</a></dt>
            <dt><a href="#">お問い合わせ</a></dt>
          </dl>
      </div>
      </section>
    </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>
</body>

</html>
