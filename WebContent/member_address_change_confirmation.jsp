<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>メールアドレス変更確認画面</title>
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
    <!-- ヘッダー //共通項目 -->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
    <article class="member_information_change_wrapper">
      <section class="member_change">

        <h1 class="m_r_title">メールアドレス変更の確認</h1>
        <h2>以下の内容でよろしければ、「完了」をクリックして下さい。</h2>
        <div class="form_wrapper">
            <dl>
              <dt>メールアドレス</dt>
                <dd>
                  あｑｗせｄｒｆｇｔｙｈ
                </dd>
            </dl>
            <div class="btn_confirmation">
                  <input type="submit" name="act1" value="" class="modoru">
                  <input type="submit" name="act2" value="" class="kanryou">
            </div>
        </div><!--form_wrapper終了-->


      </section>
    </article>
    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>
