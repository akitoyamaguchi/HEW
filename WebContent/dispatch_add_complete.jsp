<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購入時情報入力完了画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">
<link href="css/complete.css" rel="stylesheet" type="text/css">
<style type="text/css">

</style>

</head>
<body>
  <!-- 全体ラッパー -->
<div class="wrapper">
    <!-- ヘッダー //共通項目-->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
    <article class="member_register_wrapper">
      <h1 class="m_r_title">発送先の新規登録が完了しました。</h1>


      <section class="btn_confirmation">
        <button onclick="location.href='index.jsp'"><img src="btn/kanryou.png" /></button>
      </section>
    </article>

    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
