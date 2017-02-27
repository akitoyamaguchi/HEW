<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>購入方法選択画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/login.css" rel="stylesheet" type="text/css">
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
    <article class="login_wrapper">
      <section class="left_column_wrapper">
        <h2 class="m_r_title">既に会員登録されているお客様</h2>
        <form action="member_register_confirmation" method="post">
          <div class="form_wrapper">
            <dl>
              <dt>メールアドレス</dt>
                <dd>
                  <input type="email" size="40" placeholder="メールアドレスを入力" name="address" />
                </dd>
            </dl>
            <dl>
              <dt>パスワード</dt>
                <dd>
                  <input type="password" size="40" placeholder="パスワードを入力" name="passwd" />
                </dd>
            </dl>

          </div>
          <div class="btn_confirmation">
              <input type="submit" name="act1" value="" class="login">
                <div class="new_member_add_wrapper">
                  <button class="new_member_add" onclick="location.href='member_register.jsp'">新規会員登録</button>
                </div>
          </div>
        </form>
      </section>

      <section class="right_column_wrapper">
        <h2 class="m_r_title">非会員購入をされるお客様</h2>
        <form action="member_register_confirmation" method="post">
          <div class="form_wrapper">
            <p>会員登録を行わずにご利用になるお客様は「ゲスト購入」ボタンをクリックし、購入手続きを行ってください。</p>
          </div>
          <div class="btn_confirmation2">
              <input type="submit" name="act2" value="" class="guest">
          </div>
        </form>
      </section>
    </article>




    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
