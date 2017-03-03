<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>発送先登録確認画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/dispatch_add_confirm.css" rel="stylesheet" type="text/css">
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
    <article class="card_con_wrapper">
      <section class="card_input">

        <h2 class="card_input_title">発送先の新規登録情報の確認</h2>
        <div class="form_wrapper">
          <form action="#" method="post">
            <dl>
              <dt>氏名</dt>
                <dd>
                  <p>HAL太郎</p>
                </dd>
            </dl>
            <dl>
              <dt>フリガナ</dt>
                <dd>
                  <p>ハルタロウ</p>
                </dd>
            </dl>
            <dl>
              <dt>郵便番号</dt>
                <dd>
                  <p>1600023</p>
                </dd>
            </dl>
            <dl>
              <dt>住所</dt>
                <dd>
                  <p>東京都新宿区西新宿1-7-3</p>
                </dd>
            </dl>
            <dl>
              <dt>電話番号</dt>
                <dd>
                  <p>0333441010</p>
                </dd>
            </dl>
            <div class="btn_con">
                  <input type="submit" name="act" value="" class="modoru" >
                  <input type="submit" name="act" value="" class="kanryou" >
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
