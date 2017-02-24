<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>カード情報入力確認画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/card_input.css" rel="stylesheet" type="text/css">
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

        <h2 class="card_input_title">クレジットカードの登録</h2>
        <div class="form_wrapper">
          <form action="#" method="post">
            <dl>
              <dt>クレジットカードの種類</dt>
                <dd>
                  <p>Visa</p>
                </dd>
            </dl>
            <dl>
              <dt>カード名義人（半角ローマ字）</dt>
                <dd>
                  <p>HALTARO</p>
                </dd>
            </dl>
            <dl>
              <dt>カード番号</dt>
                <dd>
                  <p>1**********4356</p>
                </dd>
            </dl>
            <dl>
              <dt>有効期限</dt>
                <dd class="deadline_select">
                  <p>02/2017</p>
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
