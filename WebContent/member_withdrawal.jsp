<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>退会確認画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/input.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">

<style type="text/css">
</style>
<script type="text/javascript" src="js/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/MemberRegister.js"></script>
</head>
<body>
  <!-- 全体ラッパー -->
<div class="wrapper">
    <!-- ヘッダー //共通項目-->
	<%@ include file="header.jsp" %>
  <!-- メインコンテンツ -->
    <article class="member_information_change_wrapper">
      <section class="member_change">

        <h1 class="m_r_title">退会の確認</h1>
        <h2>退会してよろしければ、パスワードを入力の上「退会」をクリックして下さい。</h2>
        <div class="form_wrapper">
            <dl>
              <dt>パスワード</dt>
                <dd>
                  <input type="password" size="40" placeholder="パスワードを入力" name="password" />
                </dd>
            </dl>
        </div><!--form_wrapper終了-->
      </section>
      <div class="btn_confirmation2">
            <button onclick="location.href='#'"><img src="submit_btn/modoru.png"></button>
            <button onclick="location.href='#'"><img src="submit_btn/taikai.png"></button>
      </div>
    </article>
    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
