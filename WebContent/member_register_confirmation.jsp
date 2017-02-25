<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会員登録確認画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/input.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>

<script type="text/javascript" src="js/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/MemberRegisterConfirmation.js"></script>

</head>
<body>
  <!-- 全体ラッパー -->
<div class="wrapper">
    <!-- ヘッダー //共通項目-->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
<!-- <div class="overall_wrapper"> -->


  <article class="member_register_confirmation_wrapper">
    <section class="member_register_confirmation">
      <h1 class="m_r_title">登録情報の確認</h2>
        <div class="form_wrapper">
          <dl>
            <dt>メールアドレス</dt>
              <dd id="js-address">

              </dd>
          </dl>
          <dl>
            <dt>パスワード</dt>
              <dd id="js-passwd">

              </dd>
          </dl>
        </div>
        <div class="btn_confirmation2">
            <input type="submit" name="act1" value="" class="modoru">
            <input type="submit" name="act2" value="" class="kanryou">
        </div>
    </section>

  </article>

    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
