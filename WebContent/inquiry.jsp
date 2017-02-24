<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="google" value="notranslate">
  <title>問合せ画面</title>
  <link href="css/reset.css" rel="stylesheet" type="text/css">
  <link href="css/input.css" rel="stylesheet" type="text/css">
  <link href="css/inquiry.css" rel="stylesheet" type="text/css">
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
    <article class="inquiry_wrapper">
      <h2 class="inquiry_title">お問い合わせ</h2>
      <form action="#" method="post">
        <div class="form_wrapper">
          <dl>
            <dt>メールアドレス</dt>
              <dd>
                <input type="email" size="40" placeholder="メールアドレスを入力" name="email" />
              </dd>
          </dl>
          <dl>
            <dt>件名</dt>
              <dd>
                <input type="text" size="40" placeholder="件名を入力" name="subject" />
              </dd>
          </dl>
          <dl>
            <dt>カテゴリ</dt>
              <dd>
                <select class="category_select" name="category">
                 <optgroup label="会員登録">
                  <option>会員登録：要望</option>
                  <option>会員登録：質問</option>
                  <option>会員登録：不具合</option>
                  </optgroup>
                 <optgroup label="マイページ">
                  <option>マイページ：要望</option>
                  <option>マイページ：質問</option>
                  <option>マイページ：不具合</option>
                  </optgroup>
                  <optgroup label="3D表示">
                  <option>3D表示：要望</option>
                  <option>3D表示：質問</option>
                  <option>3D表示：不具合</option>
                  </optgroup>
                  <optgroup label="購入">
                  <option>購入：要望</option>
                  <option>購入：質問</option>
                  <option>購入：不具合</option>
                  </optgroup>
                  <optgroup label="検索">
                  <option>検索：要望</option>
                  <option>検索：質問</option>
                  <option>検索：不具合</option>
                  </optgroup>
                  <optgroup label="商品情報">
                  <option>商品情報：要望</option>
                  <option>商品情報：質問</option>
                  <option>商品情報：不具合</option>
                  </optgroup>
                  <optgroup label="その他">
                  <option>その他：要望</option>
                  <option>その他：質問</option>
                  <option>その他：不具合</option>
                  </optgroup>
                </select>
              </dd>
          </dl>
          <dl>
            <dt>内容</dt>
              <dd>
                <textarea class="inquiry_textarea"></textarea>
              </dd>
          </dl>
          <input type="submit" value="" class="sousin">
        </div>
      </form>

    </article>
    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>
</body>

</html>
