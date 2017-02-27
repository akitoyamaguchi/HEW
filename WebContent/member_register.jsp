<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>会員登録画面</title>
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
    <article class="member_register_wrapper">
      <section class="member_register">

        <h1 class="m_r_title">会員登録</h2>
        <div class="form_wrapper">
          <form action="#" method="post">
            <dl>
              <dt>メールアドレス</dt>
                <dd>
                  <input type="email" size="40" placeholder="メールアドレスを入力" name="address" />
                </dd>
            </dl>
            <dl>
              <dt>メールアドレス確認</dt>
                <dd>
                  <input type="email" size="40" placeholder="再度メールアドレスを入力" name="address_con" />
                </dd>
            </dl>
            <dl>
              <dt>パスワード</dt>
                <dd>
                  <input type="password" size="40" placeholder="パスワードを入力" name="passwd" />
                </dd>
            </dl>
            <dl>
              <dt>パスワード確認</dt>
                <dd>
                  <input type="password" size="40" placeholder="再度パスワードを入力" name="passwd_con" />
                </dd>
            </dl>
            <div class="btn_confirmation">
                  <input type="submit" name="act" value="" class="kakunin">
            </div>
          </form>
        </div><!--form_wrapper終了-->


      </section>
    </article>
    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
